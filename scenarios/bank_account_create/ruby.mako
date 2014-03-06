% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.new(
  :account_type => 'checking',
  :name => 'Johann Bernoulli',
  :account_number => '9900000001',
  :routing_number => '121000358'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x10dce4768
 @attributes=
  {"account_type"=>"checking",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
   "can_credit"=>true,
   "name"=>"Johann Bernoulli",
   "account_number"=>"xxxxxx0001",
   "created_at"=>"2014-03-05T23:26:41.766297Z",
   "id"=>"BA4JCiiAb4alhWMlZSv9POAU",
   "href"=>"/bank_accounts/BA4JCiiAb4alhWMlZSv9POAU",
   "can_debit"=>false,
   "routing_number"=>"121000358",
   "meta"=>{},
   "updated_at"=>"2014-03-05T23:26:41.766300Z",
   "address"=>
    {"country_code"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "state"=>nil,
     "city"=>nil,
     "postal_code"=>nil}},
 @hyperlinks=
  {"bank_account_verifications"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
