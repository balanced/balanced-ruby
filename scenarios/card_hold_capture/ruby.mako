% if mode == 'definition':
Balanced::CardHold.capture

% else:
require 'balanced'
Balanced.configure('ak-test-1AT46SzXKoUe4HUM3C1MYQGbO2itdqsZw')

card_hold = Balanced::CardHold.find('/card_holds/HL77XT98pJqoLSnvj2xfj2aK')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% endif
