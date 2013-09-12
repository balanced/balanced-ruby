% if mode == 'definition':
Balanced::Card.save()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/cards/CC6bHZHMa2mDHFlBawUfKFvG')
card.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
card.save

% endif
