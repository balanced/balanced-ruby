% if mode == 'definition':
Balanced::Account.add_card

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/accounts/AC6x0RfYdlHM6EV2G2ZTq0K2')
response = account.add_card('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/cards/CC6yon5Mb6xKmV3dmLRuAXaT')

% endif
