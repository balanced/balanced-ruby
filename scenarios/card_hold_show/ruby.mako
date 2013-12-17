% if mode == 'definition':
Balanced::CardHold.find

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card_hold = Balanced::CardHold.find('/card_holds/HL77XT98pJqoLSnvj2xfj2aK')

% endif
