% if mode == 'definition':
Balanced::Marketplace.create_buyer

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :card_uri => '/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/cards/CC5T4qufAzoJFaHS2wcGlTeo'
)

% endif
