% if mode == 'definition':
Balanced::BankAccount.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA4BWUWGpCUSJoo0e9EiFE2')
bank_account.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
bank_account.save

% elif mode == 'response':
#<Balanced::BankAccount:0x007fc09e252c48
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
   "created_at"=>"2014-04-01T16:38:09.730386Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA4BWUWGpCUSJoo0e9EiFE2",
   "id"=>"BA4BWUWGpCUSJoo0e9EiFE2",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-01T16:38:13.367215Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fc09e2520e0/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fc09e250268/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09e25a358/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fc09e2599a8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09e263ac0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
