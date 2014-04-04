% if mode == 'definition':
Balanced::BankAccount.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch("/bank_accounts/BAd2UKqX83C1p7fhmMx5pmW")
bank_account.associate_to_customer("/customers/CUb38G1IRIovbbaJlMMKUqG")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fc09e1085e0
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
   "created_at"=>"2014-04-01T16:38:17.230416Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BAd2UKqX83C1p7fhmMx5pmW",
   "id"=>"BAd2UKqX83C1p7fhmMx5pmW",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CUb38G1IRIovbbaJlMMKUqG"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-01T16:38:17.777421Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fc09e113968/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fc09e111a78/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09e11bb68/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fc09e11a268/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e1183c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
