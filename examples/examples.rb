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

# ok, we have a merchant that's signing up, let's create an account for them
# first, lets create their bank account
bank_account = Balanced::BankAccount.new(
    :account_number => "1234567890",
    :bank_code => "12",
    :name => "Jack Q Merchant",
).save

merchant = marketplace.create_merchant(
    "merchant@example.org",
    {
      :type => "person",
      :name => "Billy Jones",
      :street_address => "801 High St.",
      :postal_code => "94301",
      :country => "USA",
      :dob => "1842-01",
      :phone_number => "+16505551234",
    },
    bank_account.uri,
    "Jack Q Merchant",
)

# oh our buyer is interested in buying something for 130.00$
another_debit = buyer.debit(13000, "MARKETPLACE.COM")

# lets credit our merchant 110.00$
credit = merchant.credit(11000, "Buyer purchased something on MARKETPLACE.COM")

# our fee is 15% so, we earned ~20
mp_credit = marketplace.owner_account.credit(2000, "Our commission from MARKETPLACE.COM")

# and there you have it :)