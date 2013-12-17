% if mode == 'definition':
Balanced::BankAccount.debit

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA1IXtpQv1dUC587cpMTCRZe/debits')
bank_account.debit(
  :appears_on_statement_as => 'Statement text',
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
