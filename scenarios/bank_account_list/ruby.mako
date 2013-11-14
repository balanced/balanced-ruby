% if mode == 'definition':
Balanced::BankAccount.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

Balanced::BankAccount.all

% endif
