% if mode == 'definition':
Balanced::Card.save()

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card = Balanced::Card.find('/cards/CC6ox6OvhtUBEnDYE7UniVja')
card.meta = {
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650',
  'facebook.user_id' => '0192837465'
}
card.save

% endif
