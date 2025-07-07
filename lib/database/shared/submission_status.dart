enum InstanceSyncStatus {
  draft, // Newly created or edited submissions; not yet final
  finalized, // Marked final and ready to send
  // syncing, // Currently in the process of being sent
  synced, // Successfully sent to the server
  syncFailed; // Tried to sync but failed

  bool get isToSync => toSyncStatuses.contains(this);

  bool get isSynced => synced == this;

  bool get isFinalized => finalized == this;

  bool get isDraft => draft == this;

  bool get isSyncFailed => syncFailed == this;

  static List<InstanceSyncStatus> get toSyncStatuses =>
      [InstanceSyncStatus.finalized, InstanceSyncStatus.syncFailed];

  static List<String> get toNames => values.map((v) => v.name).toList();

  static InstanceSyncStatus getValue(String? status) {
    return switch (status?.toLowerCase()) {
      == 'draft' => InstanceSyncStatus.draft,
      == 'finalized' => InstanceSyncStatus.finalized,
      // == 'syncing' => SubmissionStatus.syncing,
      == 'synced' => InstanceSyncStatus.synced,
      == 'syncFailed' => InstanceSyncStatus.syncFailed,
      _ => InstanceSyncStatus.draft,
    };
  }
}
