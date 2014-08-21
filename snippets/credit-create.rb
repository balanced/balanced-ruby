# bank_account_href is the stored href for the BankAccount
# order_href is the stored href for the Order
bank_account = Balanced::BankAccount.fetch(bank_account_href)
credit = bank_account.credit(
  :amount => 100000,
  :description => 'Payout for order #1111',
  :order => order_href
)