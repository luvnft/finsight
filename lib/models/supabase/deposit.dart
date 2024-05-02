part of '../models.dart';

enum SupabaseCustomerType {
  personal("personal"),
  business("business"),
  student("student");

  @enumValue
  final String label;

  const SupabaseCustomerType(this.label);
}

enum SupabaseDepositsCategory {
  checking("Checking", AppIcons.checkingAccount),
  savings("Savings", AppIcons.piggyBank),
  mma("Money Market", AppIcons.cash),
  cd("Certificate of Deposit", AppIcons.certificate),
  ira("Individual Retirement", AppIcons.personMoney),
  businessSavings("Business Savings", AppIcons.businessBank),
  healthSavings("Health Savings", AppIcons.medicalBag),
  installmentSavings("Installment Savings", AppIcons.installmentSaving),
  childrensSavings("Children's Savings", AppIcons.baby),
  rewardChecking("Reward Checking", AppIcons.reward),
  finder("Finder", AppIcons.search),
  businessChecking("Business Checking", AppIcons.businessChecking);

  final String label;
  final IconData icon;
  const SupabaseDepositsCategory(this.label, this.icon);
}

@freezed
class SupabaseDeposit with _$SupabaseDeposit {
  const factory SupabaseDeposit({
    required String id,
    required DateTime createdAt,
    required String bankName,
    required int estimatedEarning,
    String? imageUrl,
    required String imageExternalUrl,
    required double maxAPY,
    double? offerAPY,
    required SupabaseDepositsCategory offerCategory,
    required String offerName,
    required String website,
    required String zip,
    required SupabaseCustomerType targetCustomer,
    required double minimumDeposit,
    required String imageLightColor,
    required String imageDarkColor,
    required String insurers,
  }) = _SupabaseDeposit;

  factory SupabaseDeposit.fromJson(Map<String, dynamic> json) =>
      _$SupabaseDepositFromJson(json);
}

@freezed
class SupabaseDepositAvgAPY with _$SupabaseDepositAvgAPY {
  const factory SupabaseDepositAvgAPY({
    required SupabaseDepositsCategory offerCategory,
    required double avgAPY,
    required double avgEstimatedEarning,
  }) = _SupabaseDepositAvgAPY;

  factory SupabaseDepositAvgAPY.fromJson(Map<String, dynamic> json) =>
      _$SupabaseDepositAvgAPYFromJson(json);
}
