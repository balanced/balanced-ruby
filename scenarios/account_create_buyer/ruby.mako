% if mode == 'definition':
Balanced::Marketplace.create_buyer

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')


buyer = Balanced::Marketplace.my_marketplace.create_buyer(
  :card_uri => '/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/cards/CC4WeeR0OUiQh9vvqNQvMl1o'
)

% endif
