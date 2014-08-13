# card_hold_href is the stored href for the CardHold
card_hold = Balanced::CardHold.fetch(card_hold_href)
debit = card_hold.capture(
  :description => 'Some descriptive text for the debit in the dashboard',
  :appears_on_statement_as => 'ShowsUpOnStmt'
)