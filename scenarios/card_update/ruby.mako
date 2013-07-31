% if mode == 'definition':
Balanced::Card.save()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/cards/CC4wel9K6ASutW6zqCWZpjsj')
card.meta = {
'facebook.user_id' => '0192837465', 'my-own-customer-id' => '12345', 'twitter.id' => '1234987650'
}
card.save

% endif
