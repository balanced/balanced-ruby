% if mode == 'definition':
Balanced::BankAccount.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2EmblHC08bmwiwwNrbI0Rj')

% elif mode == 'response':
#<Balanced::BankAccount:0x007fa7d1b484c8
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
   "created_at"=>"2014-05-15T00:39:14.751497Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA2EmblHC08bmwiwwNrbI0Rj",
   "id"=>"BA2EmblHC08bmwiwwNrbI0Rj",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-05-15T00:39:14.751501Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fa7d1b41a10/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fa7d1b32100/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d1b28970/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d1b22b60/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d1b11360/lib/balanced/utils.rb:6 (lambda)>}>

% endif
