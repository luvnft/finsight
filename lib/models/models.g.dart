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
        type: IsarType.byte,
        enumMap: {"personal": 0, "business": 1, "student": 2},
      ),
      IsarPropertySchema(
        name: 'hasBankAccount',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'bankAccounts',
        type: IsarType.byte,
        enumMap: {"asset": 0, "liability": 1},
      ),
      IsarPropertySchema(
        name: 'bankAccountType',
        type: IsarType.byte,
        enumMap: {"checking": 0, "savings": 1},
      ),
      IsarPropertySchema(
        name: 'bankAccountTypeLevel6',
        type: IsarType.byte,
        enumMap: {
          "otherInsurance": 0,
          "savingsAccount": 1,
          "x529": 2,
          "healthReimbursementArrangement": 3,
          "land": 4,
          "educationSavingsAccount": 5,
          "courtCosts": 6,
          "roth": 7,
          "variableAnnuity": 8,
          "certificateOfDepositAccount": 9,
          "hsa": 10,
          "healthSavingsAccount": 11,
          "otherCurrentAsset": 12,
          "utma": 13,
          "other": 14,
          "x457b": 15,
          "foodInventory": 16,
          "warehouseEquipment": 17,
          "inventory": 18,
          "accumulatedDepletion": 19,
          "prepaidInsurance": 20,
          "pension": 21,
          "nonCustodialWallet": 22,
          "tractorsAndTrailers": 23,
          "allowanceForDoubtfulAccounts": 24,
          "payrollClearing": 25,
          "constructionEquipment": 26,
          "keogh": 27,
          "marketableSecurities": 28,
          "otherNonCurrentAsset": 29,
          "fixedAnnuity": 30,
          "accumulatedDepreciation": 31,
          "trust": 32,
          "qshr": 33,
          "gic": 34,
          "roth401k": 35,
          "rlif": 36,
          "ugma": 37,
          "mutualFund": 38,
          "retainageReceivable": 39,
          "retirement": 40,
          "medicalEquipment": 41,
          "moneyMarketAccount": 42,
          "otherAnnuity": 43,
          "expertWitnessFees": 44,
          "furnitureAndEquipment": 45,
          "resp": 46,
          "buildingsAndImprovements": 47,
          "driverAdvances": 48,
          "x401a": 49,
          "tfsa": 50,
          "lira": 51,
          "discountOnNotesReceivable": 52,
          "ira": 53,
          "cashManagementAccount": 54,
          "rrsp": 55,
          "nonTaxableBrokerageAccount": 56,
          "uncategorizedAsset": 57,
          "filingFees": 58,
          "lifeInsurance": 59,
          "intangibleAsset": 60,
          "bank": 61,
          "cash": 62,
          "accountsReceivable": 63,
          "obsoleteInventoryReserves": 64,
          "accumulatedAmortization": 65,
          "profitSharingPlan": 66,
          "cryptoExchange": 67,
          "paypalDepositoryAccount": 68,
          "lrsp": 69,
          "simpleIra": 70,
          "securityDepositsAsset": 71,
          "cashIsa": 72,
          "advancedClientCosts": 73,
          "rdsp": 74,
          "prepaidDebitCard": 75,
          "stockPlan": 76,
          "tradeAccountsReceivable": 77,
          "lif": 78,
          "landscapingEquipment": 79,
          "isa": 80,
          "checkingAccount": 81,
          "electronicBenefitTransferAccount": 82,
          "lrif": 83,
          "brokerage": 84,
          "sepIra": 85,
          "x401k": 86,
          "vendorPrepaymentsAndVendorCredits": 87,
          "prif": 88,
          "rrif": 89,
          "constructionInProgress": 90,
          "x403b": 91,
          "sarsep": 92,
          "sipp": 93
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
  IsarCore.writeByte(writer, 2, object.accountType.index);
  {
    final value = object.hasBankAccount;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeBool(writer, 3, value);
    }
  }
  IsarCore.writeByte(writer, 4, object.bankAccounts.index);
  IsarCore.writeByte(writer, 5, object.bankAccountType.index);
  IsarCore.writeByte(writer, 6, object.bankAccountTypeLevel6.index);
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
  final AccountType _accountType;
  {
    if (IsarCore.readNull(reader, 2)) {
      _accountType = AccountType.personal;
    } else {
      _accountType = _infoStateAccountType[IsarCore.readByte(reader, 2)] ??
          AccountType.personal;
    }
  }
  final bool? _hasBankAccount;
  {
    if (IsarCore.readNull(reader, 3)) {
      _hasBankAccount = null;
    } else {
      _hasBankAccount = IsarCore.readBool(reader, 3);
    }
  }
  final BankAccounts _bankAccounts;
  {
    if (IsarCore.readNull(reader, 4)) {
      _bankAccounts = BankAccounts.asset;
    } else {
      _bankAccounts = _infoStateBankAccounts[IsarCore.readByte(reader, 4)] ??
          BankAccounts.asset;
    }
  }
  final BankAccountType _bankAccountType;
  {
    if (IsarCore.readNull(reader, 5)) {
      _bankAccountType = BankAccountType.checking;
    } else {
      _bankAccountType =
          _infoStateBankAccountType[IsarCore.readByte(reader, 5)] ??
              BankAccountType.checking;
    }
  }
  final BankAccountTypeLevel6 _bankAccountTypeLevel6;
  {
    if (IsarCore.readNull(reader, 6)) {
      _bankAccountTypeLevel6 = BankAccountTypeLevel6.otherInsurance;
    } else {
      _bankAccountTypeLevel6 =
          _infoStateBankAccountTypeLevel6[IsarCore.readByte(reader, 6)] ??
              BankAccountTypeLevel6.otherInsurance;
    }
  }
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
    bankAccountTypeLevel6: _bankAccountTypeLevel6,
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
      {
        if (IsarCore.readNull(reader, 2)) {
          return AccountType.personal;
        } else {
          return _infoStateAccountType[IsarCore.readByte(reader, 2)] ??
              AccountType.personal;
        }
      }
    case 3:
      {
        if (IsarCore.readNull(reader, 3)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 3);
        }
      }
    case 4:
      {
        if (IsarCore.readNull(reader, 4)) {
          return BankAccounts.asset;
        } else {
          return _infoStateBankAccounts[IsarCore.readByte(reader, 4)] ??
              BankAccounts.asset;
        }
      }
    case 5:
      {
        if (IsarCore.readNull(reader, 5)) {
          return BankAccountType.checking;
        } else {
          return _infoStateBankAccountType[IsarCore.readByte(reader, 5)] ??
              BankAccountType.checking;
        }
      }
    case 6:
      {
        if (IsarCore.readNull(reader, 6)) {
          return BankAccountTypeLevel6.otherInsurance;
        } else {
          return _infoStateBankAccountTypeLevel6[
                  IsarCore.readByte(reader, 6)] ??
              BankAccountTypeLevel6.otherInsurance;
        }
      }
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
    AccountType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel6? bankAccountTypeLevel6,
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
    Object? bankAccountTypeLevel6 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
          if (accountType != ignore) 2: accountType as AccountType?,
          if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
          if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
          if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
          if (bankAccountTypeLevel6 != ignore)
            6: bankAccountTypeLevel6 as BankAccountTypeLevel6?,
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
    AccountType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel6? bankAccountTypeLevel6,
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
    Object? bankAccountTypeLevel6 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
      if (accountType != ignore) 2: accountType as AccountType?,
      if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
      if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
      if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
      if (bankAccountTypeLevel6 != ignore)
        6: bankAccountTypeLevel6 as BankAccountTypeLevel6?,
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
    AccountType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel6? bankAccountTypeLevel6,
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
    Object? bankAccountTypeLevel6 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
      if (accountType != ignore) 2: accountType as AccountType?,
      if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
      if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
      if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
      if (bankAccountTypeLevel6 != ignore)
        6: bankAccountTypeLevel6 as BankAccountTypeLevel6?,
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
    Object? bankAccountTypeLevel6 = ignore,
    Object? accountName = ignore,
    Object? statementCsv = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
        if (accountType != ignore) 2: accountType as AccountType?,
        if (hasBankAccount != ignore) 3: hasBankAccount as bool?,
        if (bankAccounts != ignore) 4: bankAccounts as BankAccounts?,
        if (bankAccountType != ignore) 5: bankAccountType as BankAccountType?,
        if (bankAccountTypeLevel6 != ignore)
          6: bankAccountTypeLevel6 as BankAccountTypeLevel6?,
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
  0: AccountType.personal,
  1: AccountType.business,
  2: AccountType.student,
};
const _infoStateBankAccounts = {
  0: BankAccounts.asset,
  1: BankAccounts.liability,
};
const _infoStateBankAccountType = {
  0: BankAccountType.checking,
  1: BankAccountType.savings,
};
const _infoStateBankAccountTypeLevel6 = {
  0: BankAccountTypeLevel6.otherInsurance,
  1: BankAccountTypeLevel6.savingsAccount,
  2: BankAccountTypeLevel6.x529,
  3: BankAccountTypeLevel6.healthReimbursementArrangement,
  4: BankAccountTypeLevel6.land,
  5: BankAccountTypeLevel6.educationSavingsAccount,
  6: BankAccountTypeLevel6.courtCosts,
  7: BankAccountTypeLevel6.roth,
  8: BankAccountTypeLevel6.variableAnnuity,
  9: BankAccountTypeLevel6.certificateOfDepositAccount,
  10: BankAccountTypeLevel6.hsa,
  11: BankAccountTypeLevel6.healthSavingsAccount,
  12: BankAccountTypeLevel6.otherCurrentAsset,
  13: BankAccountTypeLevel6.utma,
  14: BankAccountTypeLevel6.other,
  15: BankAccountTypeLevel6.x457b,
  16: BankAccountTypeLevel6.foodInventory,
  17: BankAccountTypeLevel6.warehouseEquipment,
  18: BankAccountTypeLevel6.inventory,
  19: BankAccountTypeLevel6.accumulatedDepletion,
  20: BankAccountTypeLevel6.prepaidInsurance,
  21: BankAccountTypeLevel6.pension,
  22: BankAccountTypeLevel6.nonCustodialWallet,
  23: BankAccountTypeLevel6.tractorsAndTrailers,
  24: BankAccountTypeLevel6.allowanceForDoubtfulAccounts,
  25: BankAccountTypeLevel6.payrollClearing,
  26: BankAccountTypeLevel6.constructionEquipment,
  27: BankAccountTypeLevel6.keogh,
  28: BankAccountTypeLevel6.marketableSecurities,
  29: BankAccountTypeLevel6.otherNonCurrentAsset,
  30: BankAccountTypeLevel6.fixedAnnuity,
  31: BankAccountTypeLevel6.accumulatedDepreciation,
  32: BankAccountTypeLevel6.trust,
  33: BankAccountTypeLevel6.qshr,
  34: BankAccountTypeLevel6.gic,
  35: BankAccountTypeLevel6.roth401k,
  36: BankAccountTypeLevel6.rlif,
  37: BankAccountTypeLevel6.ugma,
  38: BankAccountTypeLevel6.mutualFund,
  39: BankAccountTypeLevel6.retainageReceivable,
  40: BankAccountTypeLevel6.retirement,
  41: BankAccountTypeLevel6.medicalEquipment,
  42: BankAccountTypeLevel6.moneyMarketAccount,
  43: BankAccountTypeLevel6.otherAnnuity,
  44: BankAccountTypeLevel6.expertWitnessFees,
  45: BankAccountTypeLevel6.furnitureAndEquipment,
  46: BankAccountTypeLevel6.resp,
  47: BankAccountTypeLevel6.buildingsAndImprovements,
  48: BankAccountTypeLevel6.driverAdvances,
  49: BankAccountTypeLevel6.x401a,
  50: BankAccountTypeLevel6.tfsa,
  51: BankAccountTypeLevel6.lira,
  52: BankAccountTypeLevel6.discountOnNotesReceivable,
  53: BankAccountTypeLevel6.ira,
  54: BankAccountTypeLevel6.cashManagementAccount,
  55: BankAccountTypeLevel6.rrsp,
  56: BankAccountTypeLevel6.nonTaxableBrokerageAccount,
  57: BankAccountTypeLevel6.uncategorizedAsset,
  58: BankAccountTypeLevel6.filingFees,
  59: BankAccountTypeLevel6.lifeInsurance,
  60: BankAccountTypeLevel6.intangibleAsset,
  61: BankAccountTypeLevel6.bank,
  62: BankAccountTypeLevel6.cash,
  63: BankAccountTypeLevel6.accountsReceivable,
  64: BankAccountTypeLevel6.obsoleteInventoryReserves,
  65: BankAccountTypeLevel6.accumulatedAmortization,
  66: BankAccountTypeLevel6.profitSharingPlan,
  67: BankAccountTypeLevel6.cryptoExchange,
  68: BankAccountTypeLevel6.paypalDepositoryAccount,
  69: BankAccountTypeLevel6.lrsp,
  70: BankAccountTypeLevel6.simpleIra,
  71: BankAccountTypeLevel6.securityDepositsAsset,
  72: BankAccountTypeLevel6.cashIsa,
  73: BankAccountTypeLevel6.advancedClientCosts,
  74: BankAccountTypeLevel6.rdsp,
  75: BankAccountTypeLevel6.prepaidDebitCard,
  76: BankAccountTypeLevel6.stockPlan,
  77: BankAccountTypeLevel6.tradeAccountsReceivable,
  78: BankAccountTypeLevel6.lif,
  79: BankAccountTypeLevel6.landscapingEquipment,
  80: BankAccountTypeLevel6.isa,
  81: BankAccountTypeLevel6.checkingAccount,
  82: BankAccountTypeLevel6.electronicBenefitTransferAccount,
  83: BankAccountTypeLevel6.lrif,
  84: BankAccountTypeLevel6.brokerage,
  85: BankAccountTypeLevel6.sepIra,
  86: BankAccountTypeLevel6.x401k,
  87: BankAccountTypeLevel6.vendorPrepaymentsAndVendorCredits,
  88: BankAccountTypeLevel6.prif,
  89: BankAccountTypeLevel6.rrif,
  90: BankAccountTypeLevel6.constructionInProgress,
  91: BankAccountTypeLevel6.x403b,
  92: BankAccountTypeLevel6.sarsep,
  93: BankAccountTypeLevel6.sipp,
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

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountTypeEqualTo(
    AccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeGreaterThan(
    AccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeGreaterThanOrEqualTo(
    AccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountTypeLessThan(
    AccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      accountTypeLessThanOrEqualTo(
    AccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> accountTypeBetween(
    AccountType lower,
    AccountType upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower.index,
          upper: upper.index,
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

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> bankAccountsEqualTo(
    BankAccounts value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsGreaterThan(
    BankAccounts value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsGreaterThanOrEqualTo(
    BankAccounts value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsLessThan(
    BankAccounts value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountsLessThanOrEqualTo(
    BankAccounts value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition> bankAccountsBetween(
    BankAccounts lower,
    BankAccounts upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeEqualTo(
    BankAccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeGreaterThan(
    BankAccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeGreaterThanOrEqualTo(
    BankAccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLessThan(
    BankAccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLessThanOrEqualTo(
    BankAccountType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeBetween(
    BankAccountType lower,
    BankAccountType upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel6EqualTo(
    BankAccountTypeLevel6 value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel6GreaterThan(
    BankAccountTypeLevel6 value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel6GreaterThanOrEqualTo(
    BankAccountTypeLevel6 value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel6LessThan(
    BankAccountTypeLevel6 value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel6LessThanOrEqualTo(
    BankAccountTypeLevel6 value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterFilterCondition>
      bankAccountTypeLevel6Between(
    BankAccountTypeLevel6 lower,
    BankAccountTypeLevel6 upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower.index,
          upper: upper.index,
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

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByAccountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByAccountTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
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

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccounts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> sortByBankAccountTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy>
      sortByBankAccountTypeLevel6() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy>
      sortByBankAccountTypeLevel6Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
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

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByAccountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByAccountTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
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

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccounts() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy> thenByBankAccountTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy>
      thenByBankAccountTypeLevel6() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterSortBy>
      thenByBankAccountTypeLevel6Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
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

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByAccountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct>
      distinctByHasBankAccount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct> distinctByBankAccounts() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct>
      distinctByBankAccountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<InfoState, InfoState, QAfterDistinct>
      distinctByBankAccountTypeLevel6() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
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

  QueryBuilder<InfoState, AccountType, QAfterProperty> accountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<InfoState, bool?, QAfterProperty> hasBankAccountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<InfoState, BankAccounts, QAfterProperty> bankAccountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<InfoState, BankAccountType, QAfterProperty>
      bankAccountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<InfoState, BankAccountTypeLevel6, QAfterProperty>
      bankAccountTypeLevel6Property() {
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

  QueryBuilder<InfoState, (R, AccountType), QAfterProperty>
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

  QueryBuilder<InfoState, (R, BankAccounts), QAfterProperty>
      bankAccountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<InfoState, (R, BankAccountType), QAfterProperty>
      bankAccountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<InfoState, (R, BankAccountTypeLevel6), QAfterProperty>
      bankAccountTypeLevel6Property() {
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

  QueryBuilder<InfoState, (R1, R2, AccountType), QOperations>
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

  QueryBuilder<InfoState, (R1, R2, BankAccounts), QOperations>
      bankAccountsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<InfoState, (R1, R2, BankAccountType), QOperations>
      bankAccountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<InfoState, (R1, R2, BankAccountTypeLevel6), QOperations>
      bankAccountTypeLevel6Property() {
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
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']) ??
              AccountType.personal,
      hasBankAccount: json['hasBankAccount'] as bool?,
      bankAccounts:
          $enumDecodeNullable(_$BankAccountsEnumMap, json['bankAccounts']) ??
              BankAccounts.asset,
      bankAccountType: $enumDecodeNullable(
              _$BankAccountTypeEnumMap, json['bankAccountType']) ??
          BankAccountType.checking,
      bankAccountTypeLevel6: $enumDecodeNullable(
              _$BankAccountTypeLevel6EnumMap, json['bankAccountTypeLevel6']) ??
          BankAccountTypeLevel6.accountsReceivable,
      accountName: json['accountName'] as String?,
      statementCsv: json['statementCsv'] as String?,
    );

Map<String, dynamic> _$$InfoStateImplToJson(_$InfoStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
      'hasBankAccount': instance.hasBankAccount,
      'bankAccounts': _$BankAccountsEnumMap[instance.bankAccounts]!,
      'bankAccountType': _$BankAccountTypeEnumMap[instance.bankAccountType]!,
      'bankAccountTypeLevel6':
          _$BankAccountTypeLevel6EnumMap[instance.bankAccountTypeLevel6]!,
      'accountName': instance.accountName,
      'statementCsv': instance.statementCsv,
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
  BankAccountTypeLevel6.x529: 'x529',
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
  BankAccountTypeLevel6.x457b: 'x457b',
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
  BankAccountTypeLevel6.x401a: 'x401a',
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
  BankAccountTypeLevel6.x401k: 'x401k',
  BankAccountTypeLevel6.vendorPrepaymentsAndVendorCredits:
      'vendorPrepaymentsAndVendorCredits',
  BankAccountTypeLevel6.prif: 'prif',
  BankAccountTypeLevel6.rrif: 'rrif',
  BankAccountTypeLevel6.constructionInProgress: 'constructionInProgress',
  BankAccountTypeLevel6.x403b: 'x403b',
  BankAccountTypeLevel6.sarsep: 'sarsep',
  BankAccountTypeLevel6.sipp: 'sipp',
};
