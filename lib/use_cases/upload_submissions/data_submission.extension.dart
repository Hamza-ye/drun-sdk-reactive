import 'package:d_sdk/database/app_database.dart';

extension DataSubmissionUploadExt on DataSubmission {
  Map<String, dynamic> toUpload() {
    Map<String, dynamic> syncableToUpload = {
      // "id": this.id,
      "uid": this.id,
      "formVersion": this.formVersion,
      "form": form,// != null ? form : formVersion.split('_')[0],
      "createdDate": this.createdDate,
      "createdBy": this.createdBy,
      "lastModifiedDate": this.lastModifiedDate,

      /// Syncable
      "version": this.version,
      "status": this.status.name,
      "progressStatus": this.progressStatus?.name,
      "deleted": this.deleted,
      "lastSyncMassage": this.lastSyncMessage,
      "lastSyncDate": this.lastSyncDate,
      "startEntryTime": this.startEntryTime,
      "finishedEntryTime": this.finishedEntryTime,
      // "activity": this.activity,
      "team": this.team,
      "assignment": this.assignment,
      "orgUnit": this.orgUnit,
      'formData': formData,
    };

    return syncableToUpload;
  }
}
