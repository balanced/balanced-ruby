% if mode == 'definition':
Balanced::BadRequest

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

bank_account = Balanced::BankAccount.new(
  :uri => '/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/bank_accounts',
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
