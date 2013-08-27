% if mode == 'definition':
Balanced::Marketplace.create_buyer

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :card_uri => '/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/cards/CC4KUcbT2dmJRIYoG0hBpO6S'
)

% endif
