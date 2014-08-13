# card_href is the stored href for the Card
card = Balanced::Card.fetch(card_href)
card.credit(
  :amount => 5000,
  :appears_on_statement_as => 'Some text',
  :description => 'Some descriptive text for the debit in the dashboard'
)