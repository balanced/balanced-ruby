% if mode == 'definition':
Balanced::BankAccount.credits

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5A8YcoSCEPQyCaPCTvmFnW')
credits = bank_account.credits
% endif
