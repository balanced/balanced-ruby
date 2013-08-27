% if mode == 'definition':
Balanced::BankAccount.all

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

Balanced::BankAccount.all

% endif
