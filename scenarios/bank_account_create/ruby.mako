% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :account_type => 'checking',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x007fb793f275b8
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
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-17T22:38:57.291680Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fb793f26a50/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fb793f24bd8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb793f2ecc8/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb793f2e318/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb793f2c478/lib/balanced/utils.rb:6 (lambda)>}>

% endif
