import 'package:d_sdk/database/app_database.dart';

extension DataSubmissionUploadExt on DataInstance {
  Map<String, dynamic> toUpload() {
    Map<String, dynamic> syncableToUpload = {
      "uid": this.id,
      "formVersion": templateVersion,
      "form": formTemplate,
      // "version": int.parse(form.split('_')[1]),
      // "status": this.progressStatus?.name,
      "deleted": this.deleted,
      "lastSyncMassage": this.lastSyncMessage,
      "lastSyncDate": this.lastSyncDate,
      "startEntryTime": this.startEntryTime,
      "finishedEntryTime": this.finishedEntryTime,
      "team": this.team,
      "assignment": this.assignment,
      "orgUnit": this.orgUnit,
      'formData': formData,
    };

    return syncableToUpload;
  }
}
