% if mode == 'definition':
Balanced::BankAccount.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3LBmizwthrjehivn2ffzHU')
bank_account.meta = {
  'twitter.id' => '1234987650',
  'my-own-customer-id' => '12345',
  'facebook.user_id' => '0192837465'
}
bank_account.save

% elif mode == 'response':
#<Balanced::BankAccount:0x1068514f0
 @attributes=
  {"address"=>
    {"line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil,
     "postal_code"=>nil,
     "city"=>nil,
     "state"=>nil},
   "can_debit"=>false,
   "name"=>"Johann Bernoulli",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "account_type"=>"checking",
   "created_at"=>"2014-03-05T23:25:48.401480Z",
   "routing_number"=>"121000358",
   "href"=>"/bank_accounts/BA3LBmizwthrjehivn2ffzHU",
   "can_credit"=>true,
   "id"=>"BA3LBmizwthrjehivn2ffzHU",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "updated_at"=>"2014-03-05T23:25:51.917992Z",
   "meta"=>
    {"twitter.id"=>"1234987650",
     "my-own-customer-id"=>"12345",
     "facebook.user_id"=>"0192837465"},
   "account_number"=>"xxxxxx0001"},
 @hyperlinks=
  {"bank_account_verification"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "bank_account_verifications"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
