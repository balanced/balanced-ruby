% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/credits/CR6Y384863fzeb73YbW5NHVe')
% endif
