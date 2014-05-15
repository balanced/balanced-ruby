% if mode == 'definition':
Balanced::BankAccount.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2EmblHC08bmwiwwNrbI0Rj')
bank_account.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
bank_account.save

% elif mode == 'response':
#<Balanced::BankAccount:0x007fa7d1a9a2d8
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
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-05-15T00:39:18.442760Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fa7d1a92768/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fa7d1a82020/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d1a7b018/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa7d1a79ab0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d1a68fa8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
