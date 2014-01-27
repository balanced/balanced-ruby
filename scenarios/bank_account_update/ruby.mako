% if mode == 'definition':
Balanced::BankAccount.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1QFf0LmIxr8p41msqX46Oy')
bank_account.meta = {
  'facebook.user_id' => '0192837465',
  'my-own-customer-id' => '12345',
  'twitter.id' => '1234987650'
}
bank_account.save

% elif mode == 'response':
#<Balanced::BankAccount:0x007fdc9c145520
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
   "created_at"=>"2014-01-27T22:56:20.540530Z",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "href"=>"/bank_accounts/BA1QFf0LmIxr8p41msqX46Oy",
   "id"=>"BA1QFf0LmIxr8p41msqX46Oy",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "my-own-customer-id"=>"12345",
     "twitter.id"=>"1234987650"},
   "name"=>"Johann Bernoulli",
   "routing_number"=>"121000358",
   "updated_at"=>"2014-01-27T22:56:25.767386Z"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x007fdc9c144238/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fdc9c131ef8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fdc9c136e80/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fdc9c136200/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9c14c140/lib/balanced/utils.rb:6 (lambda)>}>

% endif
