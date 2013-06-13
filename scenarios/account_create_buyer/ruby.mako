% if mode == 'definition':
Balanced::Marketplace.create_buyer

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :card_uri => '/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/cards/CC6wEPGAzIQmdgiFUO4beyoU',)

% endif
