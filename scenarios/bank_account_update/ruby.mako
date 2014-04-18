% if mode == 'definition':
Balanced::BankAccount.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA8MzVwjVFnkuUvfHaXmqMZ')
bank_account.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
bank_account.save

% elif mode == 'response':
#<Balanced::BankAccount:0x007fb794b98540
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
   "created_at"=>"2014-04-17T22:38:50.708229Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA8MzVwjVFnkuUvfHaXmqMZ",
   "id"=>"BA8MzVwjVFnkuUvfHaXmqMZ",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-04-17T22:38:54.102822Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fb794b939a0/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fb794b91a88/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fb794b7f8b0/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb794b7ef00/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb794b7cfe8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
