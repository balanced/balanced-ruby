% if mode == 'definition':
Balanced::BankAccount.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6dgOEGVRRd7siCpuXsVRVR')
bank_account.meta = {
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650',
  'facebook.user_id' => '0192837465'
}
bank_account.save

% endif
