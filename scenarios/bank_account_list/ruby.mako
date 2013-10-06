% if mode == 'definition':
Balanced::BankAccount.all

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

Balanced::BankAccount.all

% endif
