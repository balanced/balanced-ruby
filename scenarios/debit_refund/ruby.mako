% if mode == 'definition':
Balanced::Debit.refund()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/debits/WD2jklEbzgwLjRiEPpIbWOs')
debit.refund
% endif
