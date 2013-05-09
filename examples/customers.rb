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

puts "create a customer"
# 
customer = Balanced::Customer.new(
          :name           => "Bill",
          :email          => "bill@bill.com",
          :business_name  => "Bill Inc.",
          :ssn_last4      => "1234",
          :address => {
            :line1 => "1234 1st Street",
            :city  => "San Francisco",
            :state => "CA"
        }
  ).save

puts "create a card and a bank account for our customer"

bank_account = marketplace.create_bank_account(
          :account_number => "1234567980",
          :bank_code => "321174811",
          :name => "Jack Q Merchant"
        )
card = Balanced::Card.new(
          :card_number       => "4111111111111111",
          :expiration_month  => "12",
          :expiration_year   => "2015",
        ).save

puts "associate the newly created bank account and card to our customer"

customer.add_card(card)
customer.add_bank_account(bank_account)

puts "check and make sure our customer now has a card and bank account listed"

puts customer.cards.inspect
puts customer.bank_accounts.inspect

puts "create a debit on our customer"

customer.debit(
  :amount       => 5000,
  :description  => "new debit"
  )

puts "check to make sure debit is added"

puts customer.debits.first.inspect
puts customer.debits.first.amount == 5000

puts "create a credit on our customer"

customer.credit(
  :amount      => 2500,
  :description => "new credit"
  )

puts "check to make sure credit is added"

puts customer.credits.first.inspect
puts customer.credits.first.amount == 2500

puts "check to see what is the active card for a customer"

puts customer.active_card.inspect

puts "check to see what is the active bank_account for a customer"

puts customer.active_bank_account.inspect




