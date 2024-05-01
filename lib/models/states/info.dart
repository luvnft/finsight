part of '../models.dart';

enum AccountType {
  personal("personal"),
  business("business"),
  student("student");

  @enumValue
  final String label;

  const AccountType(this.label);
}

enum BankAccountType {
  checking("checking"),
  savings("savings");

  @enumValue
  final String label;

  const BankAccountType(this.label);
}

enum BankAccounts {
  asset("asset"),
  liability("liability");

  @enumValue
  final String label;

  const BankAccounts(this.label);
}

enum BankAccountTypeLevel5 {
  insuranceAccount(
    "Insurance Account",
    BankAccounts.asset,
  ),
  investmentAccount(
    "Investment Account",
    BankAccounts.asset,
  ),
  land(
    "Land",
    BankAccounts.asset,
  ),
  courtCosts(
    "Court Costs",
    BankAccounts.asset,
  ),
  otherCurrentAsset(
    "Other Current Asset",
    BankAccounts.asset,
  ),
  foodInventory(
    "Food Inventory",
    BankAccounts.asset,
  ),
  taxAdvantagedAccount(
    "Tax-advantaged Account",
    BankAccounts.asset,
  ),
  warehouseEquipment(
    "Warehouse Equipment",
    BankAccounts.asset,
  ),
  inventory(
    "Inventory",
    BankAccounts.asset,
  ),
  accountAccount(
    "Account Account",
    BankAccounts.asset,
  ),
  accumulatedDepletion(
    "Accumulated depletion",
    BankAccounts.asset,
  ),
  prepaidInsurance(
    "Prepaid Insurance",
    BankAccounts.asset,
  ),
  tractorsAndTrailers(
    "Tractors and Trailers",
    BankAccounts.asset,
  ),
  investmentCertificate(
    "Investment Certificate",
    BankAccounts.asset,
  ),
  allowanceForDoubtfulAccounts(
    "Allowance for doubtful accounts",
    BankAccounts.asset,
  ),
  payrollClearing(
    "Payroll Clearing",
    BankAccounts.asset,
  ),
  constructionEquipment(
    "Construction Equipment",
    BankAccounts.asset,
  ),
  marketableSecurities(
    "Marketable Securities",
    BankAccounts.asset,
  ),
  otherNonCurrentAsset(
    "Other Non-Current Asset",
    BankAccounts.asset,
  ),
  accumulatedDepreciation(
    "Accumulated Depreciation",
    BankAccounts.asset,
  ),
  savingsPlanAccount(
    "Savings Plan Account",
    BankAccounts.asset,
  ),
  stockPlanAccount(
    "Stock Plan Account",
    BankAccounts.asset,
  ),
  retainageReceivable(
    "Retainage Receivable",
    BankAccounts.asset,
  ),
  medicalEquipment(
    "Medical Equipment",
    BankAccounts.asset,
  ),
  expertWitnessFees(
    "Expert Witness Fees",
    BankAccounts.asset,
  ),
  utmaAccount(
    "UTMA Account",
    BankAccounts.asset,
  ),
  furnitureAndEquipment(
    "Furniture and Equipment",
    BankAccounts.asset,
  ),
  buildingsAndImprovements(
    "Buildings and Improvements",
    BankAccounts.asset,
  ),
  driverAdvances(
    "Driver Advances",
    BankAccounts.asset,
  ),
  shareAccount(
    "Share Account",
    BankAccounts.asset,
  ),
  cryptocurrencyAccount(
    "Cryptocurrency Account",
    BankAccounts.asset,
  ),
  discountOnNotesReceivable(
    "Discount on notes receivable",
    BankAccounts.asset,
  ),
  uncategorizedAsset(
    "Uncategorized Asset",
    BankAccounts.asset,
  ),
  annuityAccount(
    "Annuity Account",
    BankAccounts.asset,
  ),
  filingFees(
    "Filing Fees",
    BankAccounts.asset,
  ),
  mutualFundAccount(
    "Mutual Fund Account",
    BankAccounts.asset,
  ),
  brokerageAccount(
    "Brokerage Account",
    BankAccounts.asset,
  ),
  intangibleAsset(
    "Intangible Asset",
    BankAccounts.asset,
  ),
  pensionAccount(
    "Pension Account",
    BankAccounts.asset,
  ),
  accountsReceivable(
    "Accounts Receivable",
    BankAccounts.asset,
  ),
  obsoleteInventoryReserves(
    "Obsolete inventory reserves",
    BankAccounts.asset,
  ),
  bankAccount(
    "Bank Account",
    BankAccounts.asset,
  ),
  accumulatedAmortization(
    "Accumulated Amortization",
    BankAccounts.asset,
  ),
  k401Account(
    "401K Account",
    BankAccounts.asset,
  ),
  securityDepositsAsset(
    "Security Deposits Asset",
    BankAccounts.asset,
  ),
  advancedClientCosts(
    "Advanced Client Costs",
    BankAccounts.asset,
  ),
  tradeAccountsReceivable(
    "Trade accounts receivable",
    BankAccounts.asset,
  ),
  landscapingEquipment(
    "Landscaping Equipment",
    BankAccounts.asset,
  ),
  retirementAccount(
    "Retirement Account",
    BankAccounts.asset,
  ),
  cashOnHand(
    "Cash on Hand",
    BankAccounts.asset,
  ),
  vendorPrepaymentsAndVendorCredits(
    "Vendor Prepayments and Vendor Credits",
    BankAccounts.asset,
  ),
  savingsAccount(
    "Savings Account",
    BankAccounts.asset,
  ),
  incomeFundAccount(
    "Income Fund Account",
    BankAccounts.asset,
  ),
  ugmaAccount(
    "UGMA Account",
    BankAccounts.asset,
  ),
  rothIRA(
    "Roth IRA",
    BankAccounts.asset,
  ),
  constructionInProgress(
    "Construction in Progress",
    BankAccounts.asset,
  ),
  trustAccount(
    "Trust Account",
    BankAccounts.asset,
  ),
  advanceCustomerPayments(
    "Advance Customer Payments",
    BankAccounts.liability,
  ),
  uncategorizedLiability(
    "Uncategorized Liability",
    BankAccounts.liability,
  ),
  shortTermDebt(
    "Short-Term Debt",
    BankAccounts.liability,
  ),
  lineOfCredit(
    "Line of Credit",
    BankAccounts.liability,
  ),
  discountOnNotesPayable(
    "Discount on Notes Payable",
    BankAccounts.liability,
  ),
  payrollLiabilities(
    "Payroll Liabilities",
    BankAccounts.liability,
  ),
  accountsPayable(
    "Accounts Payable",
    BankAccounts.liability,
  ),
  bondIssueCosts(
    "Bond Issue Costs",
    BankAccounts.liability,
  ),
  customerDepositsReceived(
    "Customer Deposits Received",
    BankAccounts.liability,
  ),
  discountOnBondsPayable(
    "Discount on bonds payable",
    BankAccounts.liability,
  ),
  shareholderLoan(
    "Shareholder Loan",
    BankAccounts.liability,
  ),
  creditCard(
    "Credit Card",
    BankAccounts.liability,
  ),
  deferredTaxLiability(
    "Deferred Tax Liability",
    BankAccounts.liability,
  ),
  employeeTipsPayable(
    "Employee Tips Payable",
    BankAccounts.liability,
  ),
  tenantSecurityDepositsHeld(
    "Tenant Security Deposits Held",
    BankAccounts.liability,
  ),
  customerDeposits(
    "Customer Deposits",
    BankAccounts.liability,
  ),
  loan(
    "Loan",
    BankAccounts.liability,
  ),
  customerPrepaymentsAndCustomerCredits(
    "Customer Prepayments and Customer Credits",
    BankAccounts.liability,
  ),
  unearnedRevenue(
    "Unearned Revenue",
    BankAccounts.liability,
  ),
  accruedLiability(
    "Accrued Liability",
    BankAccounts.liability,
  ),
  taxesPayable(
    "Taxes Payable",
    BankAccounts.liability,
  ),
  loanAndLineOfCredit(
    "Loan and Line of Credit",
    BankAccounts.liability,
  ),
  salesTaxes(
    "Sales Taxes",
    BankAccounts.liability,
  ),
  otherNonCurrentLiability(
    "Other Non-Current Liability",
    BankAccounts.liability,
  ),
  longTermDebt(
    "Long-Term Debt",
    BankAccounts.liability,
  );

  @enumValue
  final String label;
  final BankAccounts bankAccounts;

  const BankAccountTypeLevel5(this.label, this.bankAccounts);
}

@freezed
@Collection(ignore: {'copyWith', 'isFilled'})
class InfoState with _$InfoState {
  factory InfoState({
    required int id,
    String? name,
    AccountType? accountType,
    bool? hasBankAccount,
    BankAccounts? bankAccounts,
    BankAccountType? bankAccountType,
    BankAccountTypeLevel5? bankAccountTypeLevel5,
    String? accountName,
    String? statementCsv,
  }) = _InfoState;

  factory InfoState.fromJson(Map<String, dynamic> json) =>
      _$InfoStateFromJson(json);
}
