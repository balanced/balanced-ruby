% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA1SeZEMzTHJG3kiQRkcMOkW')
bank_account.meta = {
  'facebook.user_id' => '0192837465',
  'twitter.id' => '1234987650',
  'my-own-customer-id' => '12345'
}
bank_account.save

% endif
