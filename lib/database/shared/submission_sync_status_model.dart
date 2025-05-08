import 'package:d_sdk/database/shared/shared.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class SubmissionSyncStatusModel with EquatableMixin {
  final SubmissionStatus status;
  final int count;

  SubmissionSyncStatusModel({required this.status, required this.count});

  @override
  List<Object?> get props => [status, count];
}
