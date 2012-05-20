$:.unshift("/Users/mahmoud/code/poundpay/ruby/balanced-ruby/lib")
require 'balanced'

# create our new api key
api_key = Balanced::ApiKey.new.save
puts "Our secret is: ", api_key.secret

# configure with our secret
Balanced.configure(api_key.secret)

# create our marketplace
marketplace = Balanced::Marketplace.new.save

# what's my merchant?
raise "Merchant.me should not be nil" if Balanced::Merchant.me.nil?

# what's my marketplace?
raise "Marketplace.my_marketplace should not be nil" if Balanced::Marketplace.my_marketplace.nil?

# cool! let's create a new card.

card = Balanced::Card.new(
  :card_number => "5105105105105100",
  :expiration_month => "12",
  :expiration_year => "2015",
).save

# create our account
buyer = marketplace.create_buyer("buyer@example.org", card.uri)

# hold some amount of funds on the buyer, lets say 15$
the_hold = buyer.hold(1500)

# the hold has a fee of 35c
raise "The hold's fee is incorrect" if the_hold.fee != 35

# nah, lets just capture it
debit = the_hold.capture()

# hmm, how much money do i have in escrow? should equal
# the debit amount
marketplace = marketplace.my_marketplace
raise "1500 is not in escrow! this is wrong" if marketplace.in_escrow != 1500


# cool. now let me refund
refund = debit.refund()  # the full amount!

# notice how Balanced refunds you your fees?
raise "Woah, fees are incorrect" if (refund.fee + debit.fee) != 0

