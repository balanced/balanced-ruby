% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA4pTirJaJ1A16Hku5z0OpIj')
bank_account.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
bank_account.save

% endif
