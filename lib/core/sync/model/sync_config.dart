enum ConflictStrategy {
  serverWins,
  clientWins,
  merge,
  timestamp,
}

class SyncConfig {
  final ConflictStrategy conflictStrategy;
  final bool deltaOnly;
  final DateTime? lastSync;

  SyncConfig(
      {required this.conflictStrategy,
      this.deltaOnly = false,
      required this.lastSync});
}
