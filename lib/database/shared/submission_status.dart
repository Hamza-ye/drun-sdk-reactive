enum SubmissionStatus {
  draft, // Newly created or edited submissions; not yet final
  finalized, // Marked final and ready to send
  syncing, // Currently in the process of being sent
  synced, // Successfully sent to the server
  syncFailed; // Tried to sync but failed

  static SubmissionStatus getValue(String? status) {
    return switch (status?.toLowerCase()) {
      == 'draft' => SubmissionStatus.draft,
      == 'finalized' => SubmissionStatus.finalized,
      == 'syncing' => SubmissionStatus.syncing,
      == 'synced' => SubmissionStatus.synced,
      == 'syncFailed' => SubmissionStatus.syncFailed,
      _ => SubmissionStatus.draft,
    };
  }
}
