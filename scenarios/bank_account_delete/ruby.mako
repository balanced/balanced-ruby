% if mode == 'definition':
Balanced::BankAccount.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

bank_account = Balanced::BankAccount.find('/v1/bank_accounts/BA5uvDqG8xk4bGmwX3JTbIee')
bank_account.unstore

% endif
