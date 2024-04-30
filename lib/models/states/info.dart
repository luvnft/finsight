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

enum BankAccountTypeLevel6 {
  otherInsurance("Other Insurance"),
  savingsAccount("Savings account"),
  x529("529"),
  healthReimbursementArrangement("Health Reimbursement Arrangement"),
  land("Land"),
  educationSavingsAccount("Education Savings Account"),
  courtCosts("Court Costs"),
  roth("Roth"),
  variableAnnuity("Variable Annuity"),
  certificateOfDepositAccount("Certificate of Deposit Account"),
  hsa("Hsa"),
  healthSavingsAccount("Health Savings Account"),
  otherCurrentAsset("Other Current Asset"),
  utma("Utma"),
  other("Other"),
  x457b("457B"),
  foodInventory("Food Inventory"),
  warehouseEquipment("Warehouse Equipment"),
  inventory("Inventory"),
  accumulatedDepletion("Accumulated depletion"),
  prepaidInsurance("Prepaid Insurance"),
  pension("Pension"),
  nonCustodialWallet("Non-Custodial Wallet"),
  tractorsAndTrailers("Tractors and Trailers"),
  allowanceForDoubtfulAccounts("Allowance for doubtful accounts"),
  payrollClearing("Payroll Clearing"),
  constructionEquipment("Construction Equipment"),
  keogh("Keogh"),
  marketableSecurities("Marketable Securities"),
  otherNonCurrentAsset("Other Non-Current Asset"),
  fixedAnnuity("Fixed Annuity"),
  accumulatedDepreciation("Accumulated Depreciation"),
  trust("Trust"),
  qshr("Qshr"),
  gic("Gic"),
  roth401k("Roth 401K"),
  rlif("Rlif"),
  ugma("Ugma"),
  mutualFund("Mutual Fund"),
  retainageReceivable("Retainage Receivable"),
  retirement("Retirement"),
  medicalEquipment("Medical Equipment"),
  moneyMarketAccount("Money Market Account"),
  otherAnnuity("Other Annuity"),
  expertWitnessFees("Expert Witness Fees"),
  furnitureAndEquipment("Furniture and Equipment"),
  resp("Resp"),
  buildingsAndImprovements("Buildings and Improvements"),
  driverAdvances("Driver Advances"),
  x401a("401A"),
  tfsa("Tfsa"),
  lira("Lira"),
  discountOnNotesReceivable("Discount on notes receivable"),
  ira("Ira"),
  cashManagementAccount("Cash Management Account"),
  rrsp("Rrsp"),
  nonTaxableBrokerageAccount("Non-Taxable Brokerage Account"),
  uncategorizedAsset("Uncategorized Asset"),
  filingFees("Filing Fees"),
  lifeInsurance("Life Insurance"),
  intangibleAsset("Intangible Asset"),
  bank("Bank"),
  cash("Cash"),
  accountsReceivable("Accounts Receivable"),
  obsoleteInventoryReserves("Obsolete inventory reserves"),
  accumulatedAmortization("Accumulated Amortization"),
  profitSharingPlan("Profit Sharing Plan"),
  cryptoExchange("Crypto Exchange"),
  paypalDepositoryAccount("PayPal Depository Account"),
  lrsp("Lrsp"),
  simpleIra("Simple Ira"),
  securityDepositsAsset("Security Deposits Asset"),
  cashIsa("Cash Isa"),
  advancedClientCosts("Advanced Client Costs"),
  rdsp("Rdsp"),
  prepaidDebitCard("Prepaid Debit Card"),
  stockPlan("Stock Plan"),
  tradeAccountsReceivable("Trade accounts receivable"),
  lif("Lif"),
  landscapingEquipment("Landscaping Equipment"),
  isa("Isa"),
  checkingAccount("Checking Account"),
  electronicBenefitTransferAccount("Electronic Benefit Transfer Account"),
  lrif("Lrif"),
  brokerage("Brokerage"),
  sepIra("Sep Ira"),
  x401k("401K"),
  vendorPrepaymentsAndVendorCredits("Vendor Prepayments and Vendor Credits"),
  prif("Prif"),
  rrif("Rrif"),
  constructionInProgress("Construction in Progress"),
  x403b("403B"),
  sarsep("Sarsep"),
  sipp("Sipp");

  final String label;

  const BankAccountTypeLevel6(this.label);
}

@freezed
@Collection(ignore: {'copyWith', 'isFilled'})
class InfoState with _$InfoState {
  factory InfoState({
    required int id,
    String? name,
    @Default(AccountType.personal) AccountType accountType,
    bool? hasBankAccount,
    @Default(BankAccounts.asset) BankAccounts bankAccounts,
    @Default(BankAccountType.checking) BankAccountType bankAccountType,
    @Default(BankAccountTypeLevel6.accountsReceivable)
    BankAccountTypeLevel6 bankAccountTypeLevel6,
    String? accountName,
    String? statementCsv,
  }) = _InfoState;

  factory InfoState.fromJson(Map<String, dynamic> json) =>
      _$InfoStateFromJson(json);
}
