import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/database/shared/assignment_status.dart';
import 'package:d_sdk/database/shared/submission_status.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.flowInstance)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class FlowInstanceDatasource extends BaseDataSource<$FlowInstancesTable, FlowInstance>
    implements MetaDataSource<FlowInstance> {
  FlowInstanceDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.flowInstances);

  @override
  String get resourceName => 'flowInstances/forms';

  Future<List<FlowInstance>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final resourcePath = '$resourceName$pathPostfix';
    final response =
        await apiClient.request(resourceName: resourcePath, method: 'get');

    final raw = response.data;

    /// expecting paged list ({ apiResourceName: [...] }),
    List dataItems = raw?['flowInstances']?.toList() ?? [];

    final flowInstanceModels = dataItems
        .map((item) =>
            _FlowInstanceWithAccess.fromJson(item as Map<String, dynamic>))
        .toList();

    final flowInstances = flowInstanceModels
        .map((t) => FlowInstance(
            id: t.flowInstance,
            activity: t.activity,
            team: t.team,
            orgUnit: t.orgUnit,
            flowStatus: t.progressStatus,
            flowType: t.flowInstanceType,
            syncState: InstanceSyncStatus.synced))
        .toList();

    final flowInstanceForms =
        flowInstanceModels.expand((t) => t.accessibleForms).toList();

    progressCallback?.call(60);

    if (flowInstances.isNotEmpty) {
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, flowInstances);
        });
        if (flowInstanceForms.isNotEmpty) {
          await db.batch((b) {
            b.insertAllOnConflictUpdate(db.assignmentForms, flowInstanceForms);
          });
        }
      });
    }
    progressCallback?.call(100);
    return flowInstances;
  }

  @override
  FlowInstance fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return FlowInstance.fromJson(data, serializer: serializer);
  }
}

class _FlowInstanceWithAccess {
  final String flowInstance;
  final String activity;
  final String team;
  final String orgUnit;
  final String flowInstanceType;
  final AssignmentStatus progressStatus;
  final List<AssignmentForm> accessibleForms;

  _FlowInstanceWithAccess(
      {required this.flowInstance,
      required this.activity,
      required this.team,
      required this.orgUnit,
      required this.progressStatus,
      required this.flowInstanceType,
      required this.accessibleForms});

  factory _FlowInstanceWithAccess.fromJson(Map<String, dynamic> map) {
    final accessibleForms = (map['accessibleForms'] as List? ?? [])
        .map<AssignmentForm>((access) => AssignmentForm.fromJson(
              {
                ...access,
                'form': access['form'],
                'flowInstance': map['flowInstance'],
              },
              serializer: CustomSerializer(),
            ))
        .toList();

    final progressStatus =
        AssignmentStatus.getType(map['progressStatus'] as String?) ??
            AssignmentStatus.PLANNED;
    return _FlowInstanceWithAccess(
      flowInstance: map['flowInstance'],
      activity: map['activity'] as String,
      team: map['team'] as String,
      orgUnit: map['orgUnit'] as String,
      progressStatus: progressStatus,
      flowInstanceType: map['flowInstanceType']['uid'],
      accessibleForms: accessibleForms,
    );
  }
}
