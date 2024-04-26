part of '../models.dart';

enum AccountType {
  personal,
  business,
  student,
}

@freezed
class InfoState with _$InfoState {
  factory InfoState({
    String? name,
    AccountType? accountType,
    bool? hasBankAccount,
  }) = _InfoState;

  factory InfoState.fromJson(Map<String, dynamic> json) =>
      _$InfoStateFromJson(json);
}
