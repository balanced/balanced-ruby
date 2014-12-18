% if mode == 'definition':
Balanced::BankAccount.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

bank_account = Balanced::BankAccount.fetch("/bank_accounts/BA6FZjm2W2mK0DIQibA1sjHv")
bank_account.associate_to_customer("/customers/CU68iUpvvUwpRpuuBL3u9Slq")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fcde18f7da0
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
   "created_at"=>"2014-12-17T21:24:33.958576Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA6FZjm2W2mK0DIQibA1sjHv",
   "id"=>"BA6FZjm2W2mK0DIQibA1sjHv",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU68iUpvvUwpRpuuBL3u9Slq"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-12-17T21:24:34.483147Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fcde18f7238/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fcde18f52f8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde18ff348/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde18fd9a8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde1907a20/lib/balanced/utils.rb:6 (lambda)>,
   "settlements"=>
    #<Proc:0x007fcde1905ae0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
