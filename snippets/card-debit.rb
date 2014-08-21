# card_href is the stored href for the Card
# order_href is the stored href for the Order
card = Balanced::Card.fetch(card_href)
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :order => order_href
)