% if mode == 'definition':
Balanced::BankAccount.credit

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5A8YcoSCEPQyCaPCTvmFnW')
bank_account.credit(:amount => 10000)
% endif
