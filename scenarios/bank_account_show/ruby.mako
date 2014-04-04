% if mode == 'definition':
Balanced::BankAccount.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA4BWUWGpCUSJoo0e9EiFE2')

% elif mode == 'response':
#<Balanced::BankAccount:0x007fc09e221f58
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
   "created_at"=>"2014-04-01T16:38:09.730386Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA4BWUWGpCUSJoo0e9EiFE2",
   "id"=>"BA4BWUWGpCUSJoo0e9EiFE2",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-01T16:38:09.730388Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fc09e2213f0/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fc09e22b530/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09e229668/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fc09e228cb8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e232dd0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
