part of '../models.dart';

enum SupabaseCreditCategory {
  best("Best", AppIcons.ribbonStar),
  rewards("Rewards", AppIcons.reward),
  bonuses("Bonuses", AppIcons.starStack),
  transfer("Transfer", AppIcons.currencyExchange),
  zeroInterest("Zero Interest", AppIcons.zero),
  noAnnualFee("No Annual Fee", AppIcons.starEmphasis),
  lowInterest("Low Interest", AppIcons.chartDownwardsTrend),
  travel("Travel", AppIcons.trip),
  airline("Airline", AppIcons.plane),
  hotel("Hotel", AppIcons.bed),
  noForeignTransactionFee("No Foreign Transaction Fee", AppIcons.foreignFee),
  business("Business", AppIcons.business),
  student("Student", AppIcons.student),
  gas("Gas", AppIcons.gasPump);

  final String label;
  final IconData icon;
  const SupabaseCreditCategory(this.label, this.icon);
}

@freezed
class SupabaseCreditRewardRate with _$SupabaseCreditRewardRate {
  const factory SupabaseCreditRewardRate({
    required String name,
    required String value,
  }) = _SupabaseCreditRewardRate;

  factory SupabaseCreditRewardRate.fromJson(Map<String, dynamic> json) =>
      _$SupabaseCreditRewardRateFromJson(json);
}

@freezed
class SupabaseCredit with _$SupabaseCredit {
  const factory SupabaseCredit({
    required String id,
    required DateTime createdAt,
    required String name,
    List<String>? annualFee,
    @Default([]) List<SupabaseCreditCategory> categories,
    List<String>? features,
    List<String>? highlights,
    required String imageExternalUrl,
    required String introBalanceTransferAPR,
    required String introPurchase,
    List<String>? label,
    required List<SupabaseCreditRewardRate> rewardsRate,
    String? score,
    String? scoreDescription,
    List<String>? views,
    required bool isBusiness,
    required String link,
    required String introBonus,
    required String introBonusUnit,
    required String topReward,
    required String topRewardUnit,
    required double regularAprFrom,
    required double regularAprTo,
    required double estimatedEarning,
    required SupabaseCustomerType targetCustomer,
    required String imageLightColor,
    required String imageDarkColor,
  }) = _SupabaseCredit;

  factory SupabaseCredit.fromJson(Map<String, dynamic> json) =>
      _$SupabaseCreditFromJson(json);
}

@freezed
class SupabaseCreditEstEarnAvg with _$SupabaseCreditEstEarnAvg {
  const factory SupabaseCreditEstEarnAvg({
    required SupabaseCreditCategory category,
    required double avgEstimatedEarning,
  }) = _SupabaseCreditEstEarnAvg;

  factory SupabaseCreditEstEarnAvg.fromJson(Map<String, dynamic> json) =>
      _$SupabaseCreditEstEarnAvgFromJson(json);
}
