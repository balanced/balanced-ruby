% if mode == 'definition':
Balanced::Card.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card = Balanced::Card.find('/cards/CC2h52tnQKGgHS7tV7gYIBuK')
card.meta = {
  'facebook.user_id' => '0192837465',
  'twitter.id' => '1234987650',
  'my-own-customer-id' => '12345'
}
card.save

% endif
