% if mode == 'definition':
Balanced::Debit.find()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/debits/WD706iriHZn5MZEyQ86DmHmE')

% endif
