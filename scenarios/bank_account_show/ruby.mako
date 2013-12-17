% if mode == 'definition':
Balanced::BankAccount.find()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6dgOEGVRRd7siCpuXsVRVR')

% endif
