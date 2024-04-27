// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertRecommendationResponseImpl _$$AlertRecommendationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlertRecommendationResponseImpl(
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) =>
              AlertRecommendationAlert.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => AlertRecommendationRecommendation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlertRecommendationResponseImplToJson(
        _$AlertRecommendationResponseImpl instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
      'recommendations': instance.recommendations,
    };

_$AlertRecommendationAlertImpl _$$AlertRecommendationAlertImplFromJson(
        Map<String, dynamic> json) =>
    _$AlertRecommendationAlertImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      level: (json['level'] as num).toInt(),
      materialSymbolName: json['materialSymbolName'] as String,
    );

Map<String, dynamic> _$$AlertRecommendationAlertImplToJson(
        _$AlertRecommendationAlertImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'level': instance.level,
      'materialSymbolName': instance.materialSymbolName,
    };

_$AlertRecommendationRecommendationImpl
    _$$AlertRecommendationRecommendationImplFromJson(
            Map<String, dynamic> json) =>
        _$AlertRecommendationRecommendationImpl(
          title: json['title'] as String,
          description: json['description'] as String,
        );

Map<String, dynamic> _$$AlertRecommendationRecommendationImplToJson(
        _$AlertRecommendationRecommendationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$InfoStateImpl _$$InfoStateImplFromJson(Map<String, dynamic> json) =>
    _$InfoStateImpl(
      name: json['name'] as String?,
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']),
      hasBankAccount: json['hasBankAccount'] as bool?,
      bankAccounts:
          $enumDecodeNullable(_$BankAccountsEnumMap, json['bankAccounts']),
      bankAccountType: $enumDecodeNullable(
          _$BankAccountTypeEnumMap, json['bankAccountType']),
      bankAccountTypeLevel6: $enumDecodeNullable(
          _$BankAccountTypeLevel6EnumMap, json['bankAccountTypeLevel6']),
    );

Map<String, dynamic> _$$InfoStateImplToJson(_$InfoStateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'accountType': _$AccountTypeEnumMap[instance.accountType],
      'hasBankAccount': instance.hasBankAccount,
      'bankAccounts': _$BankAccountsEnumMap[instance.bankAccounts],
      'bankAccountType': _$BankAccountTypeEnumMap[instance.bankAccountType],
      'bankAccountTypeLevel6':
          _$BankAccountTypeLevel6EnumMap[instance.bankAccountTypeLevel6],
    };

const _$AccountTypeEnumMap = {
  AccountType.personal: 'personal',
  AccountType.business: 'business',
  AccountType.student: 'student',
};

const _$BankAccountsEnumMap = {
  BankAccounts.asset: 'asset',
  BankAccounts.liability: 'liability',
};

const _$BankAccountTypeEnumMap = {
  BankAccountType.checking: 'checking',
  BankAccountType.savings: 'savings',
};

const _$BankAccountTypeLevel6EnumMap = {
  BankAccountTypeLevel6.otherInsurance: 'otherInsurance',
  BankAccountTypeLevel6.savingsAccount: 'savingsAccount',
  BankAccountTypeLevel6.$529: r'$529',
  BankAccountTypeLevel6.healthReimbursementArrangement:
      'healthReimbursementArrangement',
  BankAccountTypeLevel6.land: 'land',
  BankAccountTypeLevel6.educationSavingsAccount: 'educationSavingsAccount',
  BankAccountTypeLevel6.courtCosts: 'courtCosts',
  BankAccountTypeLevel6.roth: 'roth',
  BankAccountTypeLevel6.variableAnnuity: 'variableAnnuity',
  BankAccountTypeLevel6.certificateOfDepositAccount:
      'certificateOfDepositAccount',
  BankAccountTypeLevel6.hsa: 'hsa',
  BankAccountTypeLevel6.healthSavingsAccount: 'healthSavingsAccount',
  BankAccountTypeLevel6.otherCurrentAsset: 'otherCurrentAsset',
  BankAccountTypeLevel6.utma: 'utma',
  BankAccountTypeLevel6.other: 'other',
  BankAccountTypeLevel6.$457b: r'$457b',
  BankAccountTypeLevel6.foodInventory: 'foodInventory',
  BankAccountTypeLevel6.warehouseEquipment: 'warehouseEquipment',
  BankAccountTypeLevel6.inventory: 'inventory',
  BankAccountTypeLevel6.accumulatedDepletion: 'accumulatedDepletion',
  BankAccountTypeLevel6.prepaidInsurance: 'prepaidInsurance',
  BankAccountTypeLevel6.pension: 'pension',
  BankAccountTypeLevel6.nonCustodialWallet: 'nonCustodialWallet',
  BankAccountTypeLevel6.tractorsAndTrailers: 'tractorsAndTrailers',
  BankAccountTypeLevel6.allowanceForDoubtfulAccounts:
      'allowanceForDoubtfulAccounts',
  BankAccountTypeLevel6.payrollClearing: 'payrollClearing',
  BankAccountTypeLevel6.constructionEquipment: 'constructionEquipment',
  BankAccountTypeLevel6.keogh: 'keogh',
  BankAccountTypeLevel6.marketableSecurities: 'marketableSecurities',
  BankAccountTypeLevel6.otherNonCurrentAsset: 'otherNonCurrentAsset',
  BankAccountTypeLevel6.fixedAnnuity: 'fixedAnnuity',
  BankAccountTypeLevel6.accumulatedDepreciation: 'accumulatedDepreciation',
  BankAccountTypeLevel6.trust: 'trust',
  BankAccountTypeLevel6.qshr: 'qshr',
  BankAccountTypeLevel6.gic: 'gic',
  BankAccountTypeLevel6.roth401k: 'roth401k',
  BankAccountTypeLevel6.rlif: 'rlif',
  BankAccountTypeLevel6.ugma: 'ugma',
  BankAccountTypeLevel6.mutualFund: 'mutualFund',
  BankAccountTypeLevel6.retainageReceivable: 'retainageReceivable',
  BankAccountTypeLevel6.retirement: 'retirement',
  BankAccountTypeLevel6.medicalEquipment: 'medicalEquipment',
  BankAccountTypeLevel6.moneyMarketAccount: 'moneyMarketAccount',
  BankAccountTypeLevel6.otherAnnuity: 'otherAnnuity',
  BankAccountTypeLevel6.expertWitnessFees: 'expertWitnessFees',
  BankAccountTypeLevel6.furnitureAndEquipment: 'furnitureAndEquipment',
  BankAccountTypeLevel6.resp: 'resp',
  BankAccountTypeLevel6.buildingsAndImprovements: 'buildingsAndImprovements',
  BankAccountTypeLevel6.driverAdvances: 'driverAdvances',
  BankAccountTypeLevel6.$401a: r'$401a',
  BankAccountTypeLevel6.tfsa: 'tfsa',
  BankAccountTypeLevel6.lira: 'lira',
  BankAccountTypeLevel6.discountOnNotesReceivable: 'discountOnNotesReceivable',
  BankAccountTypeLevel6.ira: 'ira',
  BankAccountTypeLevel6.cashManagementAccount: 'cashManagementAccount',
  BankAccountTypeLevel6.rrsp: 'rrsp',
  BankAccountTypeLevel6.nonTaxableBrokerageAccount:
      'nonTaxableBrokerageAccount',
  BankAccountTypeLevel6.uncategorizedAsset: 'uncategorizedAsset',
  BankAccountTypeLevel6.filingFees: 'filingFees',
  BankAccountTypeLevel6.lifeInsurance: 'lifeInsurance',
  BankAccountTypeLevel6.intangibleAsset: 'intangibleAsset',
  BankAccountTypeLevel6.bank: 'bank',
  BankAccountTypeLevel6.cash: 'cash',
  BankAccountTypeLevel6.accountsReceivable: 'accountsReceivable',
  BankAccountTypeLevel6.obsoleteInventoryReserves: 'obsoleteInventoryReserves',
  BankAccountTypeLevel6.accumulatedAmortization: 'accumulatedAmortization',
  BankAccountTypeLevel6.profitSharingPlan: 'profitSharingPlan',
  BankAccountTypeLevel6.cryptoExchange: 'cryptoExchange',
  BankAccountTypeLevel6.paypalDepositoryAccount: 'paypalDepositoryAccount',
  BankAccountTypeLevel6.lrsp: 'lrsp',
  BankAccountTypeLevel6.simpleIra: 'simpleIra',
  BankAccountTypeLevel6.securityDepositsAsset: 'securityDepositsAsset',
  BankAccountTypeLevel6.cashIsa: 'cashIsa',
  BankAccountTypeLevel6.advancedClientCosts: 'advancedClientCosts',
  BankAccountTypeLevel6.rdsp: 'rdsp',
  BankAccountTypeLevel6.prepaidDebitCard: 'prepaidDebitCard',
  BankAccountTypeLevel6.stockPlan: 'stockPlan',
  BankAccountTypeLevel6.tradeAccountsReceivable: 'tradeAccountsReceivable',
  BankAccountTypeLevel6.lif: 'lif',
  BankAccountTypeLevel6.landscapingEquipment: 'landscapingEquipment',
  BankAccountTypeLevel6.isa: 'isa',
  BankAccountTypeLevel6.checkingAccount: 'checkingAccount',
  BankAccountTypeLevel6.electronicBenefitTransferAccount:
      'electronicBenefitTransferAccount',
  BankAccountTypeLevel6.lrif: 'lrif',
  BankAccountTypeLevel6.brokerage: 'brokerage',
  BankAccountTypeLevel6.sepIra: 'sepIra',
  BankAccountTypeLevel6.$401k: r'$401k',
  BankAccountTypeLevel6.vendorPrepaymentsAndVendorCredits:
      'vendorPrepaymentsAndVendorCredits',
  BankAccountTypeLevel6.prif: 'prif',
  BankAccountTypeLevel6.rrif: 'rrif',
  BankAccountTypeLevel6.constructionInProgress: 'constructionInProgress',
  BankAccountTypeLevel6.$403b: r'$403b',
  BankAccountTypeLevel6.sarsep: 'sarsep',
  BankAccountTypeLevel6.sipp: 'sipp',
};
