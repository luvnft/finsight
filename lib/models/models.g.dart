// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetInfoStateCollection on Isar {
  IsarCollection<int, InfoState> get infoStates => this.collection();
}

const InfoStateSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'InfoState',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'accountType',
        type: IsarType.string,
        enumMap: {
          "personal": "personal",
          "business": "business",
          "student": "student"
        },
      ),
      IsarPropertySchema(
        name: 'hasBankAccount',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'bankAccounts',
        type: IsarType.string,
        enumMap: {"asset": "asset", "liability": "liability"},
      ),
      IsarPropertySchema(
        name: 'bankAccountType',
        type: IsarType.string,
        enumMap: {"checking": "checking", "savings": "savings"},
      ),
      IsarPropertySchema(
        name: 'bankAccountTypeLevel5',
        type: IsarType.string,
        enumMap: {
          "insuranceAccount": "Insurance Account",
          "investmentAccount": "Investment Account",
          "land": "Land",
          "courtCosts": "Court Costs",
          "otherCurrentAsset": "Other Current Asset",
          "foodInventory": "Food Inventory",
          "taxAdvantagedAccount": "Tax-advantaged Account",
          "warehouseEquipment": "Warehouse Equipment",
          "inventory": "Inventory",
          "accountAccount": "Account Account",
          "accumulatedDepletion": "Accumulated depletion",
          "prepaidInsurance": "Prepaid Insurance",
          "tractorsAndTrailers": "Tractors and Trailers",
          "investmentCertificate": "Investment Certificate",
          "allowanceForDoubtfulAccounts": "Allowance for doubtful accounts",
          "payrollClearing": "Payroll Clearing",
          "constructionEquipment": "Construction Equipment",
          "marketableSecurities": "Marketable Securities",
          "otherNonCurrentAsset": "Other Non-Current Asset",
          "accumulatedDepreciation": "Accumulated Depreciation",
          "savingsPlanAccount": "Savings Plan Account",
          "stockPlanAccount": "Stock Plan Account",
          "retainageReceivable": "Retainage Receivable",
          "medicalEquipment": "Medical Equipment",
          "expertWitnessFees": "Expert Witness Fees",
          "utmaAccount": "UTMA Account",
          "furnitureAndEquipment": "Furniture and Equipment",
          "buildingsAndImprovements": "Buildings and Improvements",
          "driverAdvances": "Driver Advances",
          "shareAccount": "Share Account",
          "cryptocurrencyAccount": "Cryptocurrency Account",
          "discountOnNotesReceivable": "Discount on notes receivable",
          "uncategorizedAsset": "Uncategorized Asset",
          "annuityAccount": "Annuity Account",
          "filingFees": "Filing Fees",
          "mutualFundAccount": "Mutual Fund Account",
          "brokerageAccount": "Brokerage Account",
          "intangibleAsset": "Intangible Asset",
          "pensionAccount": "Pension Account",
          "accountsReceivable": "Accounts Receivable",
          "obsoleteInventoryReserves": "Obsolete inventory reserves",
          "bankAccount": "Bank Account",
          "accumulatedAmortization": "Accumulated Amortization",
          "k401Account": "401K Account",
          "securityDepositsAsset": "Security Deposits Asset",
          "advancedClientCosts": "Advanced Client Costs",
          "tradeAccountsReceivable": "Trade accounts receivable",
          "landscapingEquipment": "Landscaping Equipment",
          "retirementAccount": "Retirement Account",
          "cashOnHand": "Cash on Hand",
          "vendorPrepaymentsAndVendorCredits":
              "Vendor Prepayments and Vendor Credits",
          "savingsAccount": "Savings Account",
          "incomeFundAccount": "Income Fund Account",
          "ugmaAccount": "UGMA Account",
          "rothIRA": "Roth IRA",
          "constructionInProgress": "Construction in Progress",
          "trustAccount": "Trust Account",
          "advanceCustomerPayments": "Advance Customer Payments",
          "uncategorizedLiability": "Uncategorized Liability",
          "shortTermDebt": "Short-Term Debt",
          "lineOfCredit": "Line of Credit",
          "discountOnNotesPayable": "Discount on Notes Payable",
          "payrollLiabilities": "Payroll Liabilities",
          "accountsPayable": "Accounts Payable",
          "bondIssueCosts": "Bond Issue Costs",
          "customerDepositsReceived": "Customer Deposits Received",
          "discountOnBondsPayable": "Discount on bonds payable",
          "shareholderLoan": "Shareholder Loan",
          "creditCard": "Credit Card",
          "deferredTaxLiability": "Deferred Tax Liability",
          "employeeTipsPayable": "Employee Tips Payable",
          "tenantSecurityDepositsHeld": "Tenant Security Deposits Held",
          "customerDeposits": "Customer Deposits",
          "loan": "Loan",
          "customerPrepaymentsAndCustomerCredits":
              "Customer Prepayments and Customer Credits",
          "unearnedRevenue": "Unearned Revenue",
          "accruedLiability": "Accrued Liability",
          "taxesPayable": "Taxes Payable",
          "loanAndLineOfCredit": "Loan and Line of Credit",
          "salesTaxes": "Sales Taxes",
          "otherNonCurrentLiability": "Other Non-Current Liability",
          "longTermDebt": "Long-Term Debt"
        },
      ),
      IsarPropertySchema(
        name: 'accountName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'statementCsv',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, InfoState>(
    serialize: serializeInfoState,
    deserialize: deserializeInfoState,
    deserializeProperty: deserializeInfoStateProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeInfoState(IsarWriter writer, InfoState object) {
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.accountType?.label;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.hasBankAccount;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeBool(writer, 3, value);
    }
  }
  {
    final value = object.bankAccounts?.label;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.bankAccountType?.label;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.bankAccountTypeLevel5?.label;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  {
    final value = object.accountName;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  {
    final value = object.statementCsv;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      IsarCore.writeString(writer, 8, value);
    }
  }
  return object.id;
}

@isarProtected
InfoState deserializeInfoState(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _name;
  _name = IsarCore.readString(reader, 1);
  final SupabaseCustomerType? _accountType;
  _accountType = _infoStateAccountType[IsarCore.readString(reader, 2)] ?? null;
  final bool? _hasBankAccount;
  {
    if (IsarCore.readNull(reader, 3)) {
      _hasBankAccount = null;
    } else {
      _hasBankAccount = IsarCore.readBool(reader, 3);
    }
  }
  final BankAccounts? _bankAccounts;
  _bankAccounts =
      _infoStateBankAccounts[IsarCore.readString(reader, 4)] ?? null;
  final BankAccountType? _bankAccountType;
  _bankAccountType =
      _infoStateBankAccountType[IsarCore.readString(reader, 5)] ?? null;
  final BankAccountTypeLevel5? _bankAccountTypeLevel5;
  _bankAccountTypeLevel5 =
      _infoStateBankAccountTypeLevel5[IsarCore.readString(reader, 6)] ?? null;
  final String? _accountName;
  _accountName = IsarCore.readString(reader, 7);
  final String? _statementCsv;
  _statementCsv = IsarCore.readString(reader, 8);
  final object = InfoState(
    id: _id,
    name: _name,
    accountType: _accountType,
    hasBankAccount: _hasBankAccount,
    bankAccounts: _bankAccounts,
    bankAccountType: _bankAccountType,
    bankAccountTypeLevel5: _bankAccountTypeLevel5,
    accountName: _accountName,
    statementCsv: _statementCsv,
  );
  return object;
}

@isarProtected
dynamic deserializeInfoStateProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return _infoStateAccountType[IsarCore.readString(reader, 2)] ?? null;
    case 3:
      {
        if (IsarCore.readNull(reader, 3)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 3);
        }
      }
    case 4:
      return _infoStateBankAccounts[IsarCore.readString(reader, 4)] ?? null;
    case 5:
      return _infoStateBankAccountType[IsarCore.readString(reader, 5)] ?? null;
    case 6:
      return _infoStateBankAccountTypeLevel5[IsarCore.readString(reader, 6)] ??
          null;
    case 7:
      return IsarCore.readString(reader, 7);
    case 8:
      return IsarCore.readString(reader, 8);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _InfoStateUpdate {
  bool call({
    required int id,
    String? name,
    SupabaseCustomerType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel5? bankAccountTypeLevel5,
    String? accountName,
    String? statementCsv,
  });
}

class _InfoStateUpdateImpl implements _InfoStateUpdate {
  const _InfoStateUpdateImpl(this.collection);

  final IsarCollection<int, InfoState> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
    Object? accountType = ignore,
    Object? hasBankAccount = ignore,
    Object? bankAccounts = ignore,
    Object? bankAccountType = ignore,
    Object? bankAccountTypeLevel5 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
          if (accountType != ignore) 2: accountType as SupabaseCustomerType?,
          if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
          if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
          if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
          if (bankAccountTypeLevel5 != ignore)
            6: bankAccountTypeLevel5 as BankAccountTypeLevel5?,
          if (accountName != ignore) 7: accountName as String?,
          if (statementCsv != ignore) 8: statementCsv as String?,
        }) >
        0;
  }
}

sealed class _InfoStateUpdateAll {
  int call({
    required List<int> id,
    String? name,
    SupabaseCustomerType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel5? bankAccountTypeLevel5,
    String? accountName,
    String? statementCsv,
  });
}

class _InfoStateUpdateAllImpl implements _InfoStateUpdateAll {
  const _InfoStateUpdateAllImpl(this.collection);

  final IsarCollection<int, InfoState> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
    Object? accountType = ignore,
    Object? hasBankAccount = ignore,
    Object? bankAccounts = ignore,
    Object? bankAccountType = ignore,
    Object? bankAccountTypeLevel5 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
      if (accountType != ignore) 2: accountType as SupabaseCustomerType?,
      if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
      if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
      if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
      if (bankAccountTypeLevel5 != ignore)
        6: bankAccountTypeLevel5 as BankAccountTypeLevel5?,
      if (accountName != ignore) 7: accountName as String?,
      if (statementCsv != ignore) 8: statementCsv as String?,
    });
  }
}

extension InfoStateUpdate on IsarCollection<int, InfoState> {
  _InfoStateUpdate get update => _InfoStateUpdateImpl(this);

  _InfoStateUpdateAll get updateAll => _InfoStateUpdateAllImpl(this);
}

sealed class _InfoStateQueryUpdate {
  int call({
    String? name,
    SupabaseCustomerType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel5? bankAccountTypeLevel5,
    String? accountName,
    String? statementCsv,
  });
}

class _InfoStateQueryUpdateImpl implements _InfoStateQueryUpdate {
  const _InfoStateQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<InfoState> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? accountType = ignore,
    Object? hasBankAccount = ignore,
    Object? bankAccounts = ignore,
    Object? bankAccountType = ignore,
    Object? bankAccountTypeLevel5 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
      if (accountType != ignore) 2: accountType as SupabaseCustomerType?,
      if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
      if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
      if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
      if (bankAccountTypeLevel5 != ignore)
        6: bankAccountTypeLevel5 as BankAccountTypeLevel5?,
      if (accountName != ignore) 7: accountName as String?,
      if (statementCsv != ignore) 8: statementCsv as String?,
    });
  }
}

extension InfoStateQueryUpdate on IsarQuery<InfoState> {
  _InfoStateQueryUpdate get updateFirst =>
      _InfoStateQueryUpdateImpl(this, limit: 1);

  _InfoStateQueryUpdate get updateAll => _InfoStateQueryUpdateImpl(this);
}

class _InfoStateQueryBuilderUpdateImpl implements _InfoStateQueryUpdate {
  const _InfoStateQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<InfoState, InfoState, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? accountType = ignore,
    Object? hasBankAccount = ignore,
    Object? bankAccounts = ignore,
    Object? bankAccountType = ignore,
    Object? bankAccountTypeLevel5 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
        if (accountType != ignore) 2: accountType as SupabaseCustomerType?,
        if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
        if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
        if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
        if (bankAccountTypeLevel5 != ignore)
          6: bankAccountTypeLevel5 as BankAccountTypeLevel5?,
        if (accountName != ignore) 7: accountName as String?,
        if (statementCsv != ignore) 8: statementCsv as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension InfoStateQueryBuilderUpdate
    on QueryBuilder<InfoState, InfoState, QOperations> {
  _InfoStateQueryUpdate get updateFirst =>
      _InfoStateQueryBuilderUpdateImpl(this, limit: 1);

  _InfoStateQueryUpdate get updateAll => _InfoStateQueryBuilderUpdateImpl(this);
}

const _infoStateAccountType = {
  r'personal': SupabaseCustomerType.personal,
  r'business': SupabaseCustomerType.business,
  r'student': SupabaseCustomerType.student,
};
const _infoStateBankAccounts = {
  r'asset': BankAccounts.asset,
  r'liability': BankAccounts.liability,
};
const _infoStateBankAccountType = {
  r'checking': BankAccountType.checking,
  r'savings': BankAccountType.savings,
};
const _infoStateBankAccountTypeLevel5 = {
  r'Insurance Account': BankAccountTypeLevel5.insuranceAccount,
  r'Investment Account': BankAccountTypeLevel5.investmentAccount,
  r'Land': BankAccountTypeLevel5.land,
  r'Court Costs': BankAccountTypeLevel5.courtCosts,
  r'Other Current Asset': BankAccountTypeLevel5.otherCurrentAsset,
  r'Food Inventory': BankAccountTypeLevel5.foodInventory,
  r'Tax-advantaged Account': BankAccountTypeLevel5.taxAdvantagedAccount,
  r'Warehouse Equipment': BankAccountTypeLevel5.warehouseEquipment,
  r'Inventory': BankAccountTypeLevel5.inventory,
  r'Account Account': BankAccountTypeLevel5.accountAccount,
  r'Accumulated depletion': BankAccountTypeLevel5.accumulatedDepletion,
  r'Prepaid Insurance': BankAccountTypeLevel5.prepaidInsurance,
  r'Tractors and Trailers': BankAccountTypeLevel5.tractorsAndTrailers,
  r'Investment Certificate': BankAccountTypeLevel5.investmentCertificate,
  r'Allowance for doubtful accounts':
      BankAccountTypeLevel5.allowanceForDoubtfulAccounts,
  r'Payroll Clearing': BankAccountTypeLevel5.payrollClearing,
  r'Construction Equipment': BankAccountTypeLevel5.constructionEquipment,
  r'Marketable Securities': BankAccountTypeLevel5.marketableSecurities,
  r'Other Non-Current Asset': BankAccountTypeLevel5.otherNonCurrentAsset,
  r'Accumulated Depreciation': BankAccountTypeLevel5.accumulatedDepreciation,
  r'Savings Plan Account': BankAccountTypeLevel5.savingsPlanAccount,
  r'Stock Plan Account': BankAccountTypeLevel5.stockPlanAccount,
  r'Retainage Receivable': BankAccountTypeLevel5.retainageReceivable,
  r'Medical Equipment': BankAccountTypeLevel5.medicalEquipment,
  r'Expert Witness Fees': BankAccountTypeLevel5.expertWitnessFees,
  r'UTMA Account': BankAccountTypeLevel5.utmaAccount,
  r'Furniture and Equipment': BankAccountTypeLevel5.furnitureAndEquipment,
  r'Buildings and Improvements': BankAccountTypeLevel5.buildingsAndImprovements,
  r'Driver Advances': BankAccountTypeLevel5.driverAdvances,
  r'Share Account': BankAccountTypeLevel5.shareAccount,
  r'Cryptocurrency Account': BankAccountTypeLevel5.cryptocurrencyAccount,
  r'Discount on notes receivable':
      BankAccountTypeLevel5.discountOnNotesReceivable,
  r'Uncategorized Asset': BankAccountTypeLevel5.uncategorizedAsset,
  r'Annuity Account': BankAccountTypeLevel5.annuityAccount,
  r'Filing Fees': BankAccountTypeLevel5.filingFees,
  r'Mutual Fund Account': BankAccountTypeLevel5.mutualFundAccount,
  r'Brokerage Account': BankAccountTypeLevel5.brokerageAccount,
  r'Intangible Asset': BankAccountTypeLevel5.intangibleAsset,
  r'Pension Account': BankAccountTypeLevel5.pensionAccount,
  r'Accounts Receivable': BankAccountTypeLevel5.accountsReceivable,
  r'Obsolete inventory reserves':
      BankAccountTypeLevel5.obsoleteInventoryReserves,
  r'Bank Account': BankAccountTypeLevel5.bankAccount,
  r'Accumulated Amortization': BankAccountTypeLevel5.accumulatedAmortization,
  r'401K Account': BankAccountTypeLevel5.k401Account,
  r'Security Deposits Asset': BankAccountTypeLevel5.securityDepositsAsset,
  r'Advanced Client Costs': BankAccountTypeLevel5.advancedClientCosts,
  r'Trade accounts receivable': BankAccountTypeLevel5.tradeAccountsReceivable,
  r'Landscaping Equipment': BankAccountTypeLevel5.landscapingEquipment,
  r'Retirement Account': BankAccountTypeLevel5.retirementAccount,
  r'Cash on Hand': BankAccountTypeLevel5.cashOnHand,
  r'Vendor Prepayments and Vendor Credits':
      BankAccountTypeLevel5.vendorPrepaymentsAndVendorCredits,
  r'Savings Account': BankAccountTypeLevel5.savingsAccount,
  r'Income Fund Account': BankAccountTypeLevel5.incomeFundAccount,
  r'UGMA Account': BankAccountTypeLevel5.ugmaAccount,
  r'Roth IRA': BankAccountTypeLevel5.rothIRA,
  r'Construction in Progress': BankAccountTypeLevel5.constructionInProgress,
  r'Trust Account': BankAccountTypeLevel5.trustAccount,
  r'Advance Customer Payments': BankAccountTypeLevel5.advanceCustomerPayments,
  r'Uncategorized Liability': BankAccountTypeLevel5.uncategorizedLiability,
  r'Short-Term Debt': BankAccountTypeLevel5.shortTermDebt,
  r'Line of Credit': BankAccountTypeLevel5.lineOfCredit,
  r'Discount on Notes Payable': BankAccountTypeLevel5.discountOnNotesPayable,
  r'Payroll Liabilities': BankAccountTypeLevel5.payrollLiabilities,
  r'Accounts Payable': BankAccountTypeLevel5.accountsPayable,
  r'Bond Issue Costs': BankAccountTypeLevel5.bondIssueCosts,
  r'Customer Deposits Received': BankAccountTypeLevel5.customerDepositsReceived,
  r'Discount on bonds payable': BankAccountTypeLevel5.discountOnBondsPayable,
  r'Shareholder Loan': BankAccountTypeLevel5.shareholderLoan,
  r'Credit Card': BankAccountTypeLevel5.creditCard,
  r'Deferred Tax Liability': BankAccountTypeLevel5.deferredTaxLiability,
  r'Employee Tips Payable': BankAccountTypeLevel5.employeeTipsPayable,
  r'Tenant Security Deposits Held':
      BankAccountTypeLevel5.tenantSecurityDepositsHeld,
  r'Customer Deposits': BankAccountTypeLevel5.customerDeposits,
  r'Loan': BankAccountTypeLevel5.loan,
  r'Customer Prepayments and Customer Credits':
      BankAccountTypeLevel5.customerPrepaymentsAndCustomerCredits,
  r'Unearned Revenue': BankAccountTypeLevel5.unearnedRevenue,
  r'Accrued Liability': BankAccountTypeLevel5.accruedLiability,
  r'Taxes Payable': BankAccountTypeLevel5.taxesPayable,
  r'Loan and Line of Credit': BankAccountTypeLevel5.loanAndLineOfCredit,
  r'Sales Taxes': BankAccountTypeLevel5.salesTaxes,
  r'Other Non-Current Liability':
      BankAccountTypeLevel5.otherNonCurrentLiability,
  r'Long-Term Debt': BankAccountTypeLevel5.longTermDebt,
};

extension InfoStateQueryFilter
    on QueryBuilder<InfoState, InfoState, QFilterCondition> {
  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountTypeEqualTo(
    SupabaseCustomerType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeGreaterThan(
    SupabaseCustomerType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeGreaterThanOrEqualTo(
    SupabaseCustomerType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountTypeLessThan(
    SupabaseCustomerType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeLessThanOrEqualTo(
    SupabaseCustomerType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountTypeBetween(
    SupabaseCustomerType? lower,
    SupabaseCustomerType? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower?.label,
          upper: upper?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      hasBankAccountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      hasBankAccountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      hasBankAccountEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> bankAccountsEqualTo(
    BankAccounts? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsGreaterThan(
    BankAccounts? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsGreaterThanOrEqualTo(
    BankAccounts? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsLessThan(
    BankAccounts? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsLessThanOrEqualTo(
    BankAccounts? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> bankAccountsBetween(
    BankAccounts? lower,
    BankAccounts? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower?.label,
          upper: upper?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeEqualTo(
    BankAccountType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeGreaterThan(
    BankAccountType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeGreaterThanOrEqualTo(
    BankAccountType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLessThan(
    BankAccountType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLessThanOrEqualTo(
    BankAccountType? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeBetween(
    BankAccountType? lower,
    BankAccountType? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower?.label,
          upper: upper?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5IsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5EqualTo(
    BankAccountTypeLevel5? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5GreaterThan(
    BankAccountTypeLevel5? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5GreaterThanOrEqualTo(
    BankAccountTypeLevel5? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5LessThan(
    BankAccountTypeLevel5? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5LessThanOrEqualTo(
    BankAccountTypeLevel5? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel5Between(
    BankAccountTypeLevel5? lower,
    BankAccountTypeLevel5? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower?.label,
          upper: upper?.label,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountNameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> statementCsvEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> statementCsvBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> statementCsvMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      statementCsvIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }
}

extension InfoStateQueryObject
    on QueryBuilder<InfoState, InfoState, QFilterCondition> {}

extension InfoStateQuerySortBy on QueryBuilder<InfoState, InfoState, QSortBy> {
  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByAccountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByAccountTypeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByHasBankAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByHasBankAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccounts(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountsDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountTypeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountTypeLevel5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy>
      sortByBankAccountTypeLevel5Desc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByAccountName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByAccountNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByStatementCsv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByStatementCsvDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension InfoStateQuerySortThenBy
    on QueryBuilder<InfoState, InfoState, QSortThenBy> {
  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByAccountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByAccountTypeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByHasBankAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByHasBankAccountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccounts(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountsDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountTypeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountTypeLevel5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy>
      thenByBankAccountTypeLevel5Desc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByAccountName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByAccountNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByStatementCsv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByStatementCsvDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension InfoStateQueryWhereDistinct
    on QueryBuilder<InfoState, InfoState, QDistinct> {
  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByAccountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct>
      distinctByHasBankAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByBankAccounts(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByBankAccountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct>
      distinctByBankAccountTypeLevel5({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByAccountName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByStatementCsv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }
}

extension InfoStateQueryProperty1
    on QueryBuilder<InfoState, InfoState, QProperty> {
  QueryBuilder<InfoState, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<InfoState, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<InfoState, SupabaseCustomerType?, QAfterProperty>
      accountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<InfoState, bool?, QAfterProperty> hasBankAccountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<InfoState, BankAccounts?, QAfterProperty>
      bankAccountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<InfoState, BankAccountType?, QAfterProperty>
      bankAccountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<InfoState, BankAccountTypeLevel5?, QAfterProperty>
      bankAccountTypeLevel5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<InfoState, String?, QAfterProperty> accountNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<InfoState, String?, QAfterProperty> statementCsvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension InfoStateQueryProperty2<R>
    on QueryBuilder<InfoState, R, QAfterProperty> {
  QueryBuilder<InfoState, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<InfoState, (R, String?), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<InfoState, (R, SupabaseCustomerType?), QAfterProperty>
      accountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<InfoState, (R, bool?), QAfterProperty> hasBankAccountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<InfoState, (R, BankAccounts?), QAfterProperty>
      bankAccountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<InfoState, (R, BankAccountType?), QAfterProperty>
      bankAccountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<InfoState, (R, BankAccountTypeLevel5?), QAfterProperty>
      bankAccountTypeLevel5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<InfoState, (R, String?), QAfterProperty> accountNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<InfoState, (R, String?), QAfterProperty> statementCsvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension InfoStateQueryProperty3<R1, R2>
    on QueryBuilder<InfoState, (R1, R2), QAfterProperty> {
  QueryBuilder<InfoState, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<InfoState, (R1, R2, String?), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<InfoState, (R1, R2, SupabaseCustomerType?), QOperations>
      accountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<InfoState, (R1, R2, bool?), QOperations>
      hasBankAccountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<InfoState, (R1, R2, BankAccounts?), QOperations>
      bankAccountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<InfoState, (R1, R2, BankAccountType?), QOperations>
      bankAccountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<InfoState, (R1, R2, BankAccountTypeLevel5?), QOperations>
      bankAccountTypeLevel5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<InfoState, (R1, R2, String?), QOperations>
      accountNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<InfoState, (R1, R2, String?), QOperations>
      statementCsvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

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
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      accountType: $enumDecodeNullable(
          _$SupabaseCustomerTypeEnumMap, json['accountType']),
      hasBankAccount: json['hasBankAccount'] as bool?,
      bankAccounts:
          $enumDecodeNullable(_$BankAccountsEnumMap, json['bankAccounts']),
      bankAccountType: $enumDecodeNullable(
          _$BankAccountTypeEnumMap, json['bankAccountType']),
      bankAccountTypeLevel5: $enumDecodeNullable(
          _$BankAccountTypeLevel5EnumMap, json['bankAccountTypeLevel5']),
      accountName: json['accountName'] as String?,
      statementCsv: json['statementCsv'] as String?,
    );

Map<String, dynamic> _$$InfoStateImplToJson(_$InfoStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accountType': _$SupabaseCustomerTypeEnumMap[instance.accountType],
      'hasBankAccount': instance.hasBankAccount,
      'bankAccounts': _$BankAccountsEnumMap[instance.bankAccounts],
      'bankAccountType': _$BankAccountTypeEnumMap[instance.bankAccountType],
      'bankAccountTypeLevel5':
          _$BankAccountTypeLevel5EnumMap[instance.bankAccountTypeLevel5],
      'accountName': instance.accountName,
      'statementCsv': instance.statementCsv,
    };

const _$SupabaseCustomerTypeEnumMap = {
  SupabaseCustomerType.personal: 'personal',
  SupabaseCustomerType.business: 'business',
  SupabaseCustomerType.student: 'student',
};

const _$BankAccountsEnumMap = {
  BankAccounts.asset: 'asset',
  BankAccounts.liability: 'liability',
};

const _$BankAccountTypeEnumMap = {
  BankAccountType.checking: 'checking',
  BankAccountType.savings: 'savings',
};

const _$BankAccountTypeLevel5EnumMap = {
  BankAccountTypeLevel5.insuranceAccount: 'insuranceAccount',
  BankAccountTypeLevel5.investmentAccount: 'investmentAccount',
  BankAccountTypeLevel5.land: 'land',
  BankAccountTypeLevel5.courtCosts: 'courtCosts',
  BankAccountTypeLevel5.otherCurrentAsset: 'otherCurrentAsset',
  BankAccountTypeLevel5.foodInventory: 'foodInventory',
  BankAccountTypeLevel5.taxAdvantagedAccount: 'taxAdvantagedAccount',
  BankAccountTypeLevel5.warehouseEquipment: 'warehouseEquipment',
  BankAccountTypeLevel5.inventory: 'inventory',
  BankAccountTypeLevel5.accountAccount: 'accountAccount',
  BankAccountTypeLevel5.accumulatedDepletion: 'accumulatedDepletion',
  BankAccountTypeLevel5.prepaidInsurance: 'prepaidInsurance',
  BankAccountTypeLevel5.tractorsAndTrailers: 'tractorsAndTrailers',
  BankAccountTypeLevel5.investmentCertificate: 'investmentCertificate',
  BankAccountTypeLevel5.allowanceForDoubtfulAccounts:
      'allowanceForDoubtfulAccounts',
  BankAccountTypeLevel5.payrollClearing: 'payrollClearing',
  BankAccountTypeLevel5.constructionEquipment: 'constructionEquipment',
  BankAccountTypeLevel5.marketableSecurities: 'marketableSecurities',
  BankAccountTypeLevel5.otherNonCurrentAsset: 'otherNonCurrentAsset',
  BankAccountTypeLevel5.accumulatedDepreciation: 'accumulatedDepreciation',
  BankAccountTypeLevel5.savingsPlanAccount: 'savingsPlanAccount',
  BankAccountTypeLevel5.stockPlanAccount: 'stockPlanAccount',
  BankAccountTypeLevel5.retainageReceivable: 'retainageReceivable',
  BankAccountTypeLevel5.medicalEquipment: 'medicalEquipment',
  BankAccountTypeLevel5.expertWitnessFees: 'expertWitnessFees',
  BankAccountTypeLevel5.utmaAccount: 'utmaAccount',
  BankAccountTypeLevel5.furnitureAndEquipment: 'furnitureAndEquipment',
  BankAccountTypeLevel5.buildingsAndImprovements: 'buildingsAndImprovements',
  BankAccountTypeLevel5.driverAdvances: 'driverAdvances',
  BankAccountTypeLevel5.shareAccount: 'shareAccount',
  BankAccountTypeLevel5.cryptocurrencyAccount: 'cryptocurrencyAccount',
  BankAccountTypeLevel5.discountOnNotesReceivable: 'discountOnNotesReceivable',
  BankAccountTypeLevel5.uncategorizedAsset: 'uncategorizedAsset',
  BankAccountTypeLevel5.annuityAccount: 'annuityAccount',
  BankAccountTypeLevel5.filingFees: 'filingFees',
  BankAccountTypeLevel5.mutualFundAccount: 'mutualFundAccount',
  BankAccountTypeLevel5.brokerageAccount: 'brokerageAccount',
  BankAccountTypeLevel5.intangibleAsset: 'intangibleAsset',
  BankAccountTypeLevel5.pensionAccount: 'pensionAccount',
  BankAccountTypeLevel5.accountsReceivable: 'accountsReceivable',
  BankAccountTypeLevel5.obsoleteInventoryReserves: 'obsoleteInventoryReserves',
  BankAccountTypeLevel5.bankAccount: 'bankAccount',
  BankAccountTypeLevel5.accumulatedAmortization: 'accumulatedAmortization',
  BankAccountTypeLevel5.k401Account: 'k401Account',
  BankAccountTypeLevel5.securityDepositsAsset: 'securityDepositsAsset',
  BankAccountTypeLevel5.advancedClientCosts: 'advancedClientCosts',
  BankAccountTypeLevel5.tradeAccountsReceivable: 'tradeAccountsReceivable',
  BankAccountTypeLevel5.landscapingEquipment: 'landscapingEquipment',
  BankAccountTypeLevel5.retirementAccount: 'retirementAccount',
  BankAccountTypeLevel5.cashOnHand: 'cashOnHand',
  BankAccountTypeLevel5.vendorPrepaymentsAndVendorCredits:
      'vendorPrepaymentsAndVendorCredits',
  BankAccountTypeLevel5.savingsAccount: 'savingsAccount',
  BankAccountTypeLevel5.incomeFundAccount: 'incomeFundAccount',
  BankAccountTypeLevel5.ugmaAccount: 'ugmaAccount',
  BankAccountTypeLevel5.rothIRA: 'rothIRA',
  BankAccountTypeLevel5.constructionInProgress: 'constructionInProgress',
  BankAccountTypeLevel5.trustAccount: 'trustAccount',
  BankAccountTypeLevel5.advanceCustomerPayments: 'advanceCustomerPayments',
  BankAccountTypeLevel5.uncategorizedLiability: 'uncategorizedLiability',
  BankAccountTypeLevel5.shortTermDebt: 'shortTermDebt',
  BankAccountTypeLevel5.lineOfCredit: 'lineOfCredit',
  BankAccountTypeLevel5.discountOnNotesPayable: 'discountOnNotesPayable',
  BankAccountTypeLevel5.payrollLiabilities: 'payrollLiabilities',
  BankAccountTypeLevel5.accountsPayable: 'accountsPayable',
  BankAccountTypeLevel5.bondIssueCosts: 'bondIssueCosts',
  BankAccountTypeLevel5.customerDepositsReceived: 'customerDepositsReceived',
  BankAccountTypeLevel5.discountOnBondsPayable: 'discountOnBondsPayable',
  BankAccountTypeLevel5.shareholderLoan: 'shareholderLoan',
  BankAccountTypeLevel5.creditCard: 'creditCard',
  BankAccountTypeLevel5.deferredTaxLiability: 'deferredTaxLiability',
  BankAccountTypeLevel5.employeeTipsPayable: 'employeeTipsPayable',
  BankAccountTypeLevel5.tenantSecurityDepositsHeld:
      'tenantSecurityDepositsHeld',
  BankAccountTypeLevel5.customerDeposits: 'customerDeposits',
  BankAccountTypeLevel5.loan: 'loan',
  BankAccountTypeLevel5.customerPrepaymentsAndCustomerCredits:
      'customerPrepaymentsAndCustomerCredits',
  BankAccountTypeLevel5.unearnedRevenue: 'unearnedRevenue',
  BankAccountTypeLevel5.accruedLiability: 'accruedLiability',
  BankAccountTypeLevel5.taxesPayable: 'taxesPayable',
  BankAccountTypeLevel5.loanAndLineOfCredit: 'loanAndLineOfCredit',
  BankAccountTypeLevel5.salesTaxes: 'salesTaxes',
  BankAccountTypeLevel5.otherNonCurrentLiability: 'otherNonCurrentLiability',
  BankAccountTypeLevel5.longTermDebt: 'longTermDebt',
};

_$SupabaseDepositImpl _$$SupabaseDepositImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseDepositImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      bankName: json['bankName'] as String,
      estimatedEarning: (json['estimatedEarning'] as num).toInt(),
      imageUrl: json['imageUrl'] as String?,
      imageExternalUrl: json['imageExternalUrl'] as String,
      maxAPY: (json['maxAPY'] as num).toDouble(),
      offerAPY: (json['offerAPY'] as num?)?.toDouble(),
      offerCategory:
          $enumDecode(_$SupabaseDepositsCategoryEnumMap, json['offerCategory']),
      offerName: json['offerName'] as String,
      website: json['website'] as String,
      zip: json['zip'] as String,
      targetCustomer:
          $enumDecode(_$SupabaseCustomerTypeEnumMap, json['targetCustomer']),
      minimumDeposit: (json['minimumDeposit'] as num).toDouble(),
      imageLightColor: json['imageLightColor'] as String,
      imageDarkColor: json['imageDarkColor'] as String,
      insurers: json['insurers'] as String,
    );

Map<String, dynamic> _$$SupabaseDepositImplToJson(
        _$SupabaseDepositImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'bankName': instance.bankName,
      'estimatedEarning': instance.estimatedEarning,
      'imageUrl': instance.imageUrl,
      'imageExternalUrl': instance.imageExternalUrl,
      'maxAPY': instance.maxAPY,
      'offerAPY': instance.offerAPY,
      'offerCategory':
          _$SupabaseDepositsCategoryEnumMap[instance.offerCategory]!,
      'offerName': instance.offerName,
      'website': instance.website,
      'zip': instance.zip,
      'targetCustomer': _$SupabaseCustomerTypeEnumMap[instance.targetCustomer]!,
      'minimumDeposit': instance.minimumDeposit,
      'imageLightColor': instance.imageLightColor,
      'imageDarkColor': instance.imageDarkColor,
      'insurers': instance.insurers,
    };

const _$SupabaseDepositsCategoryEnumMap = {
  SupabaseDepositsCategory.checking: 'checking',
  SupabaseDepositsCategory.savings: 'savings',
  SupabaseDepositsCategory.mma: 'mma',
  SupabaseDepositsCategory.cd: 'cd',
  SupabaseDepositsCategory.ira: 'ira',
  SupabaseDepositsCategory.businessSavings: 'businessSavings',
  SupabaseDepositsCategory.healthSavings: 'healthSavings',
  SupabaseDepositsCategory.installmentSavings: 'installmentSavings',
  SupabaseDepositsCategory.childrensSavings: 'childrensSavings',
  SupabaseDepositsCategory.rewardChecking: 'rewardChecking',
  SupabaseDepositsCategory.finder: 'finder',
  SupabaseDepositsCategory.businessChecking: 'businessChecking',
};

_$SupabaseDepositAvgAPYImpl _$$SupabaseDepositAvgAPYImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseDepositAvgAPYImpl(
      offerCategory:
          $enumDecode(_$SupabaseDepositsCategoryEnumMap, json['offerCategory']),
      avgAPY: (json['avgAPY'] as num).toDouble(),
      avgEstimatedEarning: (json['avgEstimatedEarning'] as num).toDouble(),
    );

Map<String, dynamic> _$$SupabaseDepositAvgAPYImplToJson(
        _$SupabaseDepositAvgAPYImpl instance) =>
    <String, dynamic>{
      'offerCategory':
          _$SupabaseDepositsCategoryEnumMap[instance.offerCategory]!,
      'avgAPY': instance.avgAPY,
      'avgEstimatedEarning': instance.avgEstimatedEarning,
    };

_$SupabaseCreditRewardRateImpl _$$SupabaseCreditRewardRateImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseCreditRewardRateImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$SupabaseCreditRewardRateImplToJson(
        _$SupabaseCreditRewardRateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$SupabaseCreditImpl _$$SupabaseCreditImplFromJson(Map<String, dynamic> json) =>
    _$SupabaseCreditImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      name: json['name'] as String,
      annualFee: (json['annualFee'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$SupabaseCreditCategoryEnumMap, e))
              .toList() ??
          const [],
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      highlights: (json['highlights'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageExternalUrl: json['imageExternalUrl'] as String,
      introBalanceTransferAPR: json['introBalanceTransferAPR'] as String,
      introPurchase: json['introPurchase'] as String,
      label:
          (json['label'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rewardsRate: (json['rewardsRate'] as List<dynamic>)
          .map((e) =>
              SupabaseCreditRewardRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      score: json['score'] as String?,
      scoreDescription: json['scoreDescription'] as String?,
      views:
          (json['views'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isBusiness: json['isBusiness'] as bool,
      link: json['link'] as String,
      introBonus: json['introBonus'] as String,
      introBonusUnit: json['introBonusUnit'] as String,
      topReward: json['topReward'] as String,
      topRewardUnit: json['topRewardUnit'] as String,
      regularAprFrom: (json['regularAprFrom'] as num).toDouble(),
      regularAprTo: (json['regularAprTo'] as num).toDouble(),
      estimatedEarning: (json['estimatedEarning'] as num).toDouble(),
      targetCustomer:
          $enumDecode(_$SupabaseCustomerTypeEnumMap, json['targetCustomer']),
      imageLightColor: json['imageLightColor'] as String,
      imageDarkColor: json['imageDarkColor'] as String,
    );

Map<String, dynamic> _$$SupabaseCreditImplToJson(
        _$SupabaseCreditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'annualFee': instance.annualFee,
      'categories': instance.categories
          .map((e) => _$SupabaseCreditCategoryEnumMap[e]!)
          .toList(),
      'features': instance.features,
      'highlights': instance.highlights,
      'imageExternalUrl': instance.imageExternalUrl,
      'introBalanceTransferAPR': instance.introBalanceTransferAPR,
      'introPurchase': instance.introPurchase,
      'label': instance.label,
      'rewardsRate': instance.rewardsRate,
      'score': instance.score,
      'scoreDescription': instance.scoreDescription,
      'views': instance.views,
      'isBusiness': instance.isBusiness,
      'link': instance.link,
      'introBonus': instance.introBonus,
      'introBonusUnit': instance.introBonusUnit,
      'topReward': instance.topReward,
      'topRewardUnit': instance.topRewardUnit,
      'regularAprFrom': instance.regularAprFrom,
      'regularAprTo': instance.regularAprTo,
      'estimatedEarning': instance.estimatedEarning,
      'targetCustomer': _$SupabaseCustomerTypeEnumMap[instance.targetCustomer]!,
      'imageLightColor': instance.imageLightColor,
      'imageDarkColor': instance.imageDarkColor,
    };

const _$SupabaseCreditCategoryEnumMap = {
  SupabaseCreditCategory.best: 'best',
  SupabaseCreditCategory.rewards: 'rewards',
  SupabaseCreditCategory.bonuses: 'bonuses',
  SupabaseCreditCategory.transfer: 'transfer',
  SupabaseCreditCategory.zeroInterest: 'zeroInterest',
  SupabaseCreditCategory.noAnnualFee: 'noAnnualFee',
  SupabaseCreditCategory.lowInterest: 'lowInterest',
  SupabaseCreditCategory.travel: 'travel',
  SupabaseCreditCategory.airline: 'airline',
  SupabaseCreditCategory.hotel: 'hotel',
  SupabaseCreditCategory.noForeignTransactionFee: 'noForeignTransactionFee',
  SupabaseCreditCategory.business: 'business',
  SupabaseCreditCategory.student: 'student',
  SupabaseCreditCategory.gas: 'gas',
};

_$SupabaseCreditEstEarnAvgImpl _$$SupabaseCreditEstEarnAvgImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseCreditEstEarnAvgImpl(
      category: $enumDecode(_$SupabaseCreditCategoryEnumMap, json['category']),
      avgEstimatedEarning: (json['avgEstimatedEarning'] as num).toDouble(),
    );

Map<String, dynamic> _$$SupabaseCreditEstEarnAvgImplToJson(
        _$SupabaseCreditEstEarnAvgImpl instance) =>
    <String, dynamic>{
      'category': _$SupabaseCreditCategoryEnumMap[instance.category]!,
      'avgEstimatedEarning': instance.avgEstimatedEarning,
    };
