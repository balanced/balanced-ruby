% if mode == 'definition':
Balanced::BankAccount.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6z9hDVGj7utvQSiIhHuuhf')

% elif mode == 'response':
#<Balanced::BankAccount:0x007fcde12a11e0
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
   "created_at"=>"2014-12-17T21:24:27.877249Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA6z9hDVGj7utvQSiIhHuuhf",
   "id"=>"BA6z9hDVGj7utvQSiIhHuuhf",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-12-17T21:24:27.877250Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fcde12a0678/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fcde1298e50/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde1288ca8/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde1282e70/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde12796e0/lib/balanced/utils.rb:6 (lambda)>,
   "settlements"=>
    #<Proc:0x007fcde122c200/lib/balanced/utils.rb:6 (lambda)>}>

% endif
