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

# debit the buyer's card into the order
debit = card.debit(
  :amount => amount
)

puts "Card debit : #{debit.href}"

# check the escrow balance
in_escrow = Balanced::Marketplace.mine.in_escrow
raise "Escrow should have #{amount}" if in_escrow != amount
puts "In escrow : #{in_escrow}"

# move funds to the account where it accrues a balance
credit = account.credit(:amount => amount)

puts "Account credit : #{credit.href}"

# withdraw from account to a bank account
withdrawal = account.transfer_to(
  :destination => bank_account,
  :amount => amount
)

raise "Withdrawal amount should be #{amount} but was #{withdrawal.amount}" if withdrawal.amount != amount

account.reload

raise "Account balanced should be #{amount} but was #{account.balanced}" if account.balance != initial_balance

# check the escrow balance
in_escrow = Balanced::Marketplace.mine.in_escrow
raise "Escrow should have 0" if in_escrow != 0
puts "In escrow : #{in_escrow}"