part of '../models.dart';

enum AccountType {
  personal,
  business,
  student,
}

enum BankAccountType {
  checking,
  savings,
}

enum BankAccounts {
  asset,
  liability,
}

@freezed
class InfoState with _$InfoState {
  factory InfoState({
    String? name,
    AccountType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
  }) = _InfoState;

  factory InfoState.fromJson(Map<String, dynamic> json) =>
      _$InfoStateFromJson(json);
}
