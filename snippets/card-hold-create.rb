# card_href is the stored href for the Card
card = Balanced::Card.fetch(card_href)
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)