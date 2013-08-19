cwd = File.dirname(File.dirname(File.absolute_path(__FILE__)))
$:.unshift(cwd + "/lib")
require 'balanced'

begin
  Balanced::Card
rescue NameError
  raise "wtf"
end

host = ENV.fetch('BALANCED_HOST') { nil }
options = {}
if host
  options[:scheme] = 'http'
  options[:host] = host
  options[:port] = 5000
end

Balanced.configure(nil, options)

puts "create our new api key"
api_key = Balanced::ApiKey.new.save
puts "Our secret is: ", api_key.secret
secret = api_key.secret

puts "configure with our secret #{secret}"
Balanced.configure(secret)

puts "create our marketplace"
begin
  marketplace = Balanced::Marketplace.new.save
rescue Balanced::Conflict => ex
  marketplace = Balanced::Marketplace.mine
end

raise "Merchant.me should not be nil" if Balanced::Merchant.me.nil?
puts "what's my merchant?, easy: Merchant.me: ", Balanced::Merchant.me

# what's my marketplace?
raise "Marketplace.mine should not be nil" if Balanced::Marketplace.mine.nil?
puts "what's my marketplace?, easy: Marketplace.mine: ", Balanced::Marketplace.mine

puts "My marketplace's name is: #{marketplace.name}"
random_name = (0...10).map{ ('a'..'z').to_a[rand(26)] }.join
puts "Changing it to #{random_name}"
marketplace.name = random_name
marketplace.save
puts "My marketplace name is now: #{Balanced::Marketplace.mine.name}"
raise "Marketplace name is NOT #{random_name}!" if Balanced::Marketplace.mine.name != random_name

puts "cool! let's create a new card."
card = Balanced::Card.new(
  :card_number => "5105105105105100",
  :expiration_month => "12",
  :expiration_year => "2015",
).save
puts "Our card uri: #{card.uri}"

puts "create our **buyer** account"
buyer = marketplace.create_buyer(
    :email_address => "buyer@example.org",
    :card_uri => card.uri
)
puts "our buyer account: #{buyer.uri}"

puts "hold some amount of funds on the buyer, lets say 15$"
the_hold = buyer.hold(:amount => 1500)

puts "ok, no more holds! lets just capture it (for the full amount)"
debit = the_hold.capture

puts "hmm, how much money do i have in escrow? should equal the debit amount"
marketplace = marketplace.reload
raise "1500 is not in escrow! this is wrong" if marketplace.in_escrow != 1500
puts "i have #{marketplace.in_escrow} in escrow!"

puts "cool. now let me refund the full amount"
refund = debit.refund()  # the full amount!

puts "ok, we have a merchant that's signing up, let's create an account for them " \
     "first, lets create their bank account."

bank_account = marketplace.create_bank_account(
    :account_number => "1234567890",
    :routing_number => "322271627",
    :name => "Jack Q Merchant",
)

merchant = marketplace.create_merchant(
    :email_address => "merchant@example.org",
    :merchant => {
      :type => "person",
      :name => "Billy Jones",
      :street_address => "801 High St.",
      :postal_code => "94301",
      :country => "USA",
      :dob => "1842-01",
      :phone_number => "+16505551234",
    },
    :bank_account_uri => bank_account.uri,
    :name => "Jack Q Merchant",
)

puts "oh our buyer is interested in buying something for 530.00$"
another_debit = buyer.debit(
    :amount => 53000,
    :appears_on_statement_as => "MARKETPLACE.COM"
)

puts "lets credit our merchant 110.00$"
credit = merchant.credit(
    :amount => 11000,
    :description => "Buyer purchased something on MARKETPLACE.COM"
)

puts "lets assume the marketplace charges 15%, so it earned ~20"
mp_credit = marketplace.owner_account.credit(
    :amount => 2000,
    :description => "Our commission from MARKETPLACE.COM"
)

puts "ok lets invalid a card"
card.invalidate

raise "This card is INCORRECTLY VALID" if card.is_valid

puts "invalidating a bank account"
bank_account.invalidate

raise "This card is INCORRECTLY VALID" if bank_account.is_valid

puts "let's create a bank account not associated to an account"
bank_account = Balanced::BankAccount.new(
    :account_number => "9876543210",
    :routing_number => "021000021",
    :name => "Jake Skellington",
    :type => "checking"
).save

raise "Should not have an account" if bank_account.has_account?

puts "now let's credit it, the super-simple way"
credit = bank_account.credit(
    :amount => 500
)

raise "Incorrect value for credit" if credit.amount != 500

puts "That was still too hard -- let's credit without creating a bank account first"
credit = Balanced::Credit.new(
    :amount => 700,
    :description => "Amazing",
    :bank_account => {
        :account_number => "55555555",
        :bank_code => "021000021",
        :name => "Wanda Wandy",
        :type => "checking"
    }
).save
raise "OOPS -- that was hard after all" if (credit.amount != 700 or
                                            credit.created_at.nil?)
