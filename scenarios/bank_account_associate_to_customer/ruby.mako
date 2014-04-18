% if mode == 'definition':
Balanced::BankAccount.associate_to_customer

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.fetch("/bank_accounts/BAscOV2erMwv3yhIb5sFTaV")
bank_account.associate_to_customer("/customers/CUeXNjpejPooRtSnJLc6SRD")

% elif mode == 'response':
#<Balanced::BankAccount:0x007fb793ef7980
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
   "created_at"=>"2014-04-17T22:38:57.291677Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BAscOV2erMwv3yhIb5sFTaV",
   "id"=>"BAscOV2erMwv3yhIb5sFTaV",
   "links"=>
    {"bank_account_verification"=>nil, "customer"=>"CUeXNjpejPooRtSnJLc6SRD"},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-17T22:38:57.745100Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fb793ef6d50/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fb793ef4e60/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793efef28/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb793efd628/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793f07740/lib/balanced/utils.rb:6 (lambda)>}>

% endif
