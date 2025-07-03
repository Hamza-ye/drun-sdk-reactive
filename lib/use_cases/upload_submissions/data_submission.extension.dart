import 'package:d_sdk/database/app_database.dart';

extension DataSubmissionUploadExt on DataSubmission {
  Map<String, dynamic> toUpload() {
    Map<String, dynamic> syncableToUpload = {
      "uid": this.id,
      "formVersion": dataTemplate,
      "form": dataTemplate,
      "version": dataTemplateVer,
      "status": this.syncState.name,
      "deleted": this.deleted,
      "lastSyncMassage": this.lastSyncMessage,
      "lastSyncDate": this.lastSyncDate,
      "startEntryTime": this.startEntryTime,
      "finishedEntryTime": this.finishedEntryTime,
      "team": this.team,
      "assignment": this.flowInstance,
      "orgUnit": this.orgUnit,
      'formData': formData,
    };

    return syncableToUpload;
  }
}
