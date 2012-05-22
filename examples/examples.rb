$:.unshift("/Users/mahmoud/code/poundpay/ruby/balanced-ruby/lib")
require 'balanced'
begin
  Balanced::Card
rescue NameError
  raise "wtf"
end

puts "create our new api key"
api_key = Balanced::ApiKey.new.save
puts "Our secret is: ", api_key.secret

puts "configure with our secret #{api_key}"
Balanced.configure(api_key.secret)

puts "create our marketplace"
marketplace = Balanced::Marketplace.new.save

raise "Merchant.me should not be nil" if Balanced::Merchant.me.nil?
puts "what's my merchant?, easy: Merchant.me: ", Balanced::Merchant.me

# what's my marketplace?
raise "Marketplace.my_marketplace should not be nil" if Balanced::Marketplace.my_marketplace.nil?
puts "what's my marketplace?, easy: Marketplace.my_marketplace: ", Balanced::Marketplace.my_marketplace

puts "My marketplace's name is: #{marketplace.name}"
puts "Changing it to TestFooey"
marketplace.name = "TestFooey"
marketplace.save
puts "My marketplace name is now: #{Balanced::Marketplace.my_marketplace.name}"
raise "Marketplace name is NOT TestFooey!" if Balanced::Marketplace.my_marketplace.name != "TestFooey"

puts "cool! let's create a new card."
card = Balanced::Card.new(
  :card_number => "5105105105105100",
  :expiration_month => "12",
  :expiration_year => "2015",
).save
puts "Our card uri: #{card.uri}"

puts "create our **buyer** account"
buyer = marketplace.create_buyer("buyer@example.org", card.uri)
puts "our buyer account: #{buyer.uri}"

puts "hold some amount of funds on the buyer, lets say 15$"
the_hold = buyer.hold(1500)

puts "the hold has a fee of 35c, here's the fee #{the_hold.fee}"
raise "The hold's fee is incorrect" if the_hold.fee != 35

puts "ok, no more holds! lets just capture it (for the full amount)"
debit = the_hold.capture()

puts "hmm, how much money do i have in escrow? should equal the debit amount"
marketplace = marketplace.reload
raise "1500 is not in escrow! this is wrong" if marketplace.in_escrow != 1500
puts "i have #{marketplace.in_escrow} in escrow!"

puts "cool. now let me refund the full amount"
refund = debit.refund()  # the full amount!

puts "notice how Balanced refunds you your fees? refund fees: #{refund.fee}"
raise "Woah, fees are incorrect" if (refund.fee + debit.fee) != 0

puts "ok, we have a merchant that's signing up, let's create an account for them " \
     "first, lets create their bank account."

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

puts "oh our buyer is interested in buying something for 130.00$"
another_debit = buyer.debit(13000, "MARKETPLACE.COM")

puts "lets credit our merchant 110.00$"
credit = merchant.credit(11000, "Buyer purchased something on MARKETPLACE.COM")

puts "lets assume the marketplace charges 15%, so it earned ~20"
mp_credit = marketplace.owner_account.credit(2000, "Our commission from MARKETPLACE.COM")

puts "ok lets invalid a card"
card['is_valid'] = false
card.save

raise "This card is NOT VALID" if card.is_valid

puts "and there you have it :)"