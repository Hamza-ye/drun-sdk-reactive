import 'package:d_sdk/database/app_database.dart';

extension DataSubmissionUploadExt on DataSubmission {
  Map<String, dynamic> toUpload() {
    Map<String, dynamic> syncableToUpload = {
      "uid": this.id,
      "formVersion": form,
      "form": form.split('_')[0],
      "version": int.parse(form.split('_')[1]),
      "status": this.progressStatus?.name,
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
