% if mode == 'definition':
Balanced::Customer.add_bank_account

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

customer = Balanced::Customer.fetch('/customers/CU4EeI9UPzRcOo2C3j1qFjQj')
customer.add_bank_account("")

% elif mode == 'response':
#<Balanced::BankAccount:0x106155e58
 @attributes=
  {"address"=>
    {"line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil,
     "postal_code"=>nil,
     "city"=>nil,
     "state"=>nil},
   "can_debit"=>false,
   "name"=>"Johann Bernoulli",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU4EeI9UPzRcOo2C3j1qFjQj"},
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "account_type"=>"checking",
   "created_at"=>"2014-03-05T23:26:41.766297Z",
   "routing_number"=>"121000358",
   "href"=>"/bank_accounts/BA4JCiiAb4alhWMlZSv9POAU",
   "can_credit"=>true,
   "id"=>"BA4JCiiAb4alhWMlZSv9POAU",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "updated_at"=>"2014-03-05T23:26:42.260213Z",
   "meta"=>{},
   "account_number"=>"xxxxxx0001"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "bank_account_verifications"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
