% if mode == 'definition':
Balanced::BankAccount.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

bank_account = Balanced::BankAccount.fetch("/bank_accounts/BA7zu6QXmylsn0o6qVpS8UO9")
bank_account.associate_to_customer("/customers/CU7yCmXG2RxyyIkcHG3SIMUF")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fb60b109320
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
   "created_at"=>"2014-04-25T22:00:11.119953Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA7zu6QXmylsn0o6qVpS8UO9",
   "id"=>"BA7zu6QXmylsn0o6qVpS8UO9",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-25T22:00:11.625350Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fb60b107ca0/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fb60b1178a8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb60b11f378/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb60b09e228/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b12c348/lib/balanced/utils.rb:6 (lambda)>}>

% endif
