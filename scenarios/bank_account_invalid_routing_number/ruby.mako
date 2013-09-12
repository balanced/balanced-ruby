% if mode == 'definition':
Balanced::BadRequest

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

bank_account = Balanced::BankAccount.new(
  :uri => '/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/bank_accounts',
  :account_number => '9900000001',
  :name => 'Johann Bernoulli',
  :routing_number => '100000007',
  :type => 'checking'
)

begin
  bank_account.save
rescue Balanced::BadRequest => ex
  raise "Key is not returned!" unless ex.extras.has_key? "routing_number"
end

% endif
