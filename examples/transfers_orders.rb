cwd = File.dirname(File.dirname(File.absolute_path(__FILE__)))
$:.unshift(cwd + "/lib")
require 'balanced'

host = ENV.fetch('BALANCED_HOST') { nil }
options = {}
if host
  options[:scheme] = 'http'
  options[:host] = host
  options[:port] = 5000
end

Balanced.configure(nil, options)

# create a new marketplace
api_key = Balanced::ApiKey.new.save
Balanced.configure(api_key.secret)
marketplace = Balanced::Marketplace.new.save

# create a customer
customer = Balanced::Customer.new(
  :name      => 'Henry Ford',
  :dob_month => 7,
  :dob_year  => 1963,
  :address => {
    :postal_code => '48120'
  }
).save

# create a bank account
bank_account = Balanced::BankAccount.new(
  :name => 'William Henry Cavendish III',
  :routing_number => '321174851',
  :account_number => '0987654321',
  :type => 'checking'
)

# associate the bank account to the customer
bank_account.associate_to_customer(customer)

# create a buyer
buyer = Balanced::Customer.new(
  :name => 'John Buyer'
).save

# create a card
card = Balanced::Card.new(
  :number => '5105105105105100',
  :expiration_month => '12',
  :expiration_year => '2020',
  :cvv => '123'
)

# associate the card to the customer
card.associate_to_customer(buyer)

puts "Customer : #{customer.href}"
puts "Customer Bank Account : #{bank_account.href}"
puts "Buyer : #{buyer.href}"
puts "Buyer Card : #{card.href}"

# get the customer's deposit account
account = customer.deposit_account

puts "Account : #{account.href}"

amount = 1240
initial_balance = account.balance

# create an order
order = customer.create_order(
  :description => 'Example order',
  :meta => {
    'item_url' => 'https://neatitems.com/12342134123'
  }
)

puts "Order : #{order.href}"

# debit the buyer's card into the order
order.debit_from(
  :source => card,
  :amount => amount
)

order.reload

# check the order balance
order_in_escrow = order.amount_escrowed
raise "Order should have #{amount} in escrow" if order_in_escrow != amount
puts "In order escrow : #{order_in_escrow}"

# move funds to the account where it accrues a balance
credit = order.credit_to(:destination => account, :amount => amount)

puts "Credit to account : #{credit.href}"

order.reload

# check the order balance
order_in_escrow = order.amount_escrowed
raise "Order should have 0 in escrow" if order_in_escrow != 0
puts "In order escrow : #{order_in_escrow}"

account.reload

puts "Account balance : #{account.balance}"

# Withdraw from Balanced to a bank account
withdrawal = account.transfer_to(
  :destination => bank_account,
  :amount => amount
)

raise "Withdrawal amount should be #{amount} but was #{withdrawal.amount}" if withdrawal.amount != amount

account.reload
raise "Account balanced should be #{amount} but was #{account.balanced}" if account.balance != initial_balance

puts "Transfer to bank account : #{withdrawal.href}"

account.reload

raise "Account balanced should be 0" if account.balance != 0
puts "Account balance : #{account.balance}"