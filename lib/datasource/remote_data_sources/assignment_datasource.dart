import 'package:d_sdk/core/sync/model/sync_config.dart';
import 'package:d_sdk/database/converters/converters.dart';
import 'package:d_sdk/database/database.dart';
import 'package:d_sdk/database/shared/assignment_status.dart';
import 'package:d_sdk/database/shared/submission_status.dart';
import 'package:d_sdk/datasource/datasource.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Order(DSOrder.assignment)
@Injectable(as: AbstractDatasource, scope: SessionContext.activeSessionScope)
class AssignmentDatasource extends BaseDataSource<$AssignmentsTable, Assignment>
    implements MetaDataSource<Assignment> {
  AssignmentDatasource({required super.apiClient, required DbManager dbManager})
      : super(dbManager: dbManager, table: dbManager.db.assignments);

  @override
  String get resourceName => 'assignments/forms';

  Future<List<Assignment>> syncWithRemote(
      {SyncConfig? options, ProgressCallback? progressCallback}) async {
    final resourcePath = '$resourceName$pathPostfix';
    final response =
        await apiClient.request(resourceName: resourcePath, method: 'get');

    final raw = response.data;

    /// expecting paged list ({ apiResourceName: [...] }),
    List dataItems = raw?['assignments']?.toList() ?? [];

    final assignmentModels = dataItems
        .map((item) =>
            _AssignmentWithAccess.fromJson(item as Map<String, dynamic>))
        .toList();

    final assignments = assignmentModels
        .map((t) => Assignment(
            id: t.assignment,
            activity: t.activity,
            team: t.team,
            orgUnit: t.orgUnit,
            assignmentStatus: t.progressStatus,
            syncState: InstanceSyncStatus.synced))
        .toList();

    final assignmentForms =
        assignmentModels.expand((t) => t.accessibleForms).toList();

    progressCallback?.call(60);

    if (assignments.isNotEmpty) {
      db.transaction(() async {
        await db.batch((b) {
          b.insertAllOnConflictUpdate(table, assignments);
        });
        if (assignmentForms.isNotEmpty) {
          await db.batch((b) {
            b.insertAllOnConflictUpdate(db.assignmentForms, assignmentForms);
          });
        }
      });
    }
    progressCallback?.call(100);
    return assignments;
  }

  @override
  Assignment fromApiJson(Map<String, dynamic> data,
      {ValueSerializer? serializer}) {
    return Assignment.fromJson(data, serializer: serializer);
  }
}

class _AssignmentWithAccess {
  final String assignment;
  final String activity;
  final String team;
  final String orgUnit;
  final String assignmentType;
  final AssignmentStatus progressStatus;
  final List<AssignmentForm> accessibleForms;

  _AssignmentWithAccess(
      {required this.assignment,
      required this.activity,
      required this.team,
      required this.orgUnit,
      required this.progressStatus,
      required this.assignmentType,
      required this.accessibleForms});

  factory _AssignmentWithAccess.fromJson(Map<String, dynamic> map) {
    final accessibleForms = (map['accessibleForms'] as List? ?? [])
        .map<AssignmentForm>((access) => AssignmentForm.fromJson(
              {
                ...access,
                'form': access['form'],
                'assignment': map['assignment'],
              },
              serializer: CustomSerializer(),
            ))
        .toList();

    final progressStatus =
        AssignmentStatus.getType(map['progressStatus'] as String?) ??
            AssignmentStatus.PLANNED;
    return _AssignmentWithAccess(
      assignment: map['assignment'],
      activity: map['activity'] as String,
      team: map['team'] as String,
      orgUnit: map['orgUnit'] as String,
      progressStatus: progressStatus,
      assignmentType: map['assignmentType']['uid'],
      accessibleForms: accessibleForms,
    );
  }
}
