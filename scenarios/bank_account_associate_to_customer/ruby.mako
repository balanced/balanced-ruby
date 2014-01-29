% if mode == 'definition':
Balanced::Customer.add_bank_account

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

customer = Balanced::Customer.fetch('/customers/CU3eeasZ9yQ86uzzIYZkrPGg')
customer.add_bank_account("")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fdc9d2e7f30
 @attributes=
  {"account_number"=>"xxxxxx0001",
   "account_type"=>"checking",
   "address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "can_credit"=>true,
   "can_debit"=>false,
   "created_at"=>"2014-01-27T22:57:47.772481Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA3qNbYRqFM0Q7MXn3IcjGl0",
   "id"=>"BA3qNbYRqFM0Q7MXn3IcjGl0",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU3eeasZ9yQ86uzzIYZkrPGg"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-01-27T22:57:48.515195Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fdc9d2e6f40/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fdc9d2e5000/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fdc9d2ef000/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fdc9b0271a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9b02e570/lib/balanced/utils.rb:6 (lambda)>}>

% endif
