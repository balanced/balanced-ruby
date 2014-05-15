% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :account_type => 'checking',
  :name => 'Johann Bernoulli',
  :routing_number => '121000358'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x007fa7d1e706c8
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
   "created_at"=>"2014-05-15T00:39:26.378338Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA2RqFlRIm0xqCNnHJNLYWMd",
   "id"=>"BA2RqFlRIm0xqCNnHJNLYWMd",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>{},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-05-15T00:39:26.378342Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fa7d1e69468/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fa7d1e5b0e8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d1e50cd8/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d1e534b0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d1e43538/lib/balanced/utils.rb:6 (lambda)>}>

% endif
