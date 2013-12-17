% if mode == 'definition':
Balanced::CardHold.save

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card_hold = Balanced::CardHold.find('/card_holds/HL77XT98pJqoLSnvj2xfj2aK')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% endif
