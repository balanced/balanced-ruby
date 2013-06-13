% if mode == 'definition':
Balanced::Card.save()

% else:
require 'balanced'
Balanced.configure('c72cb360d3ae11e29593026ba7d31e6f')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP64bmAzypIUS0SUZ4qkoFqG/cards/CC6mSyhNe9lAcrUYtqAxHi1i')
card.meta = {
:facebook.user_id => '0192837465',:my-own-customer-id => '12345',:twitter.id => '1234987650',
}
card.save

% endif
