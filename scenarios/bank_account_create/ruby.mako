% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :account_type => 'checking',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x007ff2bd9617b8
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
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-03-06T19:23:27.876150Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007ff2bd960570/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007ff2bd959fb8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007ff2bd953a00/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007ff2bd952e98/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007ff2bd950bc0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
