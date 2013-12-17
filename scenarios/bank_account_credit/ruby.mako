% if mode == 'definition':
Balanced::BankAccount.credit

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6dgOEGVRRd7siCpuXsVRVR')
bank_account.credit(:amount => 2000)
% endif
