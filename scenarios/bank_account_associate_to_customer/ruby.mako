% if mode == 'definition':
Balanced::BankAccount.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

bank_account = Balanced::BankAccount.fetch("/bank_accounts/BA6S1rsNWTCwBugJqjBNQbJU")
bank_account.associate_to_customer("/customers/CU6Puxkmu24SfVbY0oi1fPLw")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fbaa501dbc0
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
   "created_at"=>"2014-03-20T18:17:22.759233Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA6S1rsNWTCwBugJqjBNQbJU",
   "id"=>"BA6S1rsNWTCwBugJqjBNQbJU",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU6Puxkmu24SfVbY0oi1fPLw"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-03-20T18:17:23.325180Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fbaa501cf90/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fbaa5026fb8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa5025050/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fbaa502f668/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa502d728/lib/balanced/utils.rb:6 (lambda)>}>

% endif
