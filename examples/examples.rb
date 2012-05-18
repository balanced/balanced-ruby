
# create our new api key
api_key = Balanced::ApiKey.new.save
puts "Our secret is: ", api_key

# configure with our secret
Balanced.configure(api_key.secret)

# create our marketplace
marketplace = Balanced::Marketplace.new.save

card = Balanced::Card.new(
  :card_number => "5105105105105100",
  :expiration_month => "12",
  :expiration_year => "2015",
).save

# create our account
buyer = marketplace.create_buyer(
    :email_address => "buyer@example.org",
    :card_uri => card.uri
)

# hold some amount of funds on the buyer, lets say 15$
the_hold = buyer.hold(
    :amount => 1500,
)

# the hold has a fee of 35c
assert the_hold.fee == 35

# nah, lets just debit it
debit = the_hold.debit()

# hmm, how much money do i have in escrow? should equal
# the debit amount
marketplace = marketplace.find(marketplace.uri)
assert marketplace.in_escrow == 1500


# cool. now let me refund
refund = debit.refund()  # the full amount!

# notice how Balanced refunds you your fees?
assert (refund.fee + debit.fee) == 0


