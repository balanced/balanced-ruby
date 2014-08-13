# bank_account_href is the stored href for the BankAccount
bank_account = Balanced::BankAccount.fetch(bank_account_href)
credit = bank_account.credit(
  :amount => 100000,
  :description => 'Payout for order #1111'
)