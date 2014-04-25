% if mode == 'definition':
Balanced::BankAccount.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

bank_account = Balanced::BankAccount.fetch("/bank_accounts/BA3Y63fK5STwlhKNMkE3Utmd")
bank_account.associate_to_customer("/customers/CU3VYCUIfwngJsidJWdGw2W5")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fa6d259f238
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
   "created_at"=>"2014-04-25T20:09:30.053834Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA3Y63fK5STwlhKNMkE3Utmd",
   "id"=>"BA3Y63fK5STwlhKNMkE3Utmd",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CU3VYCUIfwngJsidJWdGw2W5"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-25T20:09:30.667083Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fa6d259e608/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fa6d259c678/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa6d25a66c8/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa6d25a4d28/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fa6d25aeda0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
