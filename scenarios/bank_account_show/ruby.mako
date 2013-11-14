% if mode == 'definition':
Balanced::BankAccount.find()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5A8YcoSCEPQyCaPCTvmFnW')

% endif
