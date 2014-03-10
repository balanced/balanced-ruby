% if mode == 'definition':
Balanced::Customer.add_bank_account

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

customer = Balanced::Customer.fetch('/customers/CU64R7DS6DwuXYVg9RTskFK8')
customer.add_bank_account("")

% elif mode == 'response':
#<Balanced::BankAccount:0x007ff2bd9ac0d8
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
   "created_at"=>"2014-03-06T19:23:27.876147Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA6bLGpQZPOiTNRxF24rMd9m",
   "id"=>"BA6bLGpQZPOiTNRxF24rMd9m",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU64R7DS6DwuXYVg9RTskFK8"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-03-06T19:23:28.930538Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007ff2bd9a6bb0/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007ff2bd9a4630/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007ff2bd99df60/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007ff2bd98bf18/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007ff2bd9897b8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
