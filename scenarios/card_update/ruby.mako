% if mode == 'definition':
Balanced::Card.save()

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/cards/CC5ZP031cwTSKE3pSIHNNMRi')
card.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
card.save

% endif
