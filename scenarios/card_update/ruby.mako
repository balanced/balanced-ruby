% if mode == 'definition':
Balanced::Card.save()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/cards/CC5N3HHUDrAyvhNwQOoUd3UX')
card.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
card.save

% endif
