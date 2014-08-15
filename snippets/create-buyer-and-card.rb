buyer = Balanced::Customer.new(
  :name => 'John Buyer'
).save

card = Balanced::Card.new(
  :number => '5105105105105100',
  :expiration_month => '12',
  :expiration_year => '2020',
  :cvv => '123',
  :name => 'John Buyer'
).save

card.associate_to_customer(buyer)