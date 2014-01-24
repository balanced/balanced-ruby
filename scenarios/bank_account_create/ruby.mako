% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

bank_account = Balanced::BankAccount.new(
  :account_number => '9900000001',
  :type => 'checking',
  :routing_number => '121000358',
  :name => 'Johann Bernoulli'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x1087b7f88
 @attributes=
  {"can_credit"=>true,
   "account_number"=>"xxxxxx0001",
   "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
   "meta"=>{},
   "can_debit"=>false,
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "routing_number"=>"121000358",
   "name"=>"Johann Bernoulli",
   "created_at"=>"2014-01-24T17:54:02.935649Z",
   "address"=>
    {"country_code"=>nil,
     "state"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "postal_code"=>nil,
     "city"=>nil},
   "href"=>"/bank_accounts/BA3YBUkHZNRVugUmhBGE3A9G",
   "account_type"=>"checking",
   "updated_at"=>"2014-01-24T17:54:02.935654Z",
   "id"=>"BA3YBUkHZNRVugUmhBGE3A9G",
   "bank_name"=>"BANK OF AMERICA, N.A."},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "bank_account_verifications"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
