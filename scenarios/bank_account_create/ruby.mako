% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.new(
  :routing_number => '121000358',
  :account_number => '9900000001',
  :type => 'checking',
  :name => 'Johann Bernoulli'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x101f9c070
 @attributes=
  {"routing_number"=>"121000358",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "meta"=>{},
   "account_number"=>"xxxxxx0001",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "created_at"=>"2014-01-16T20:01:45.341266Z",
   "account_type"=>"checking",
   "id"=>"BAckBADsuYXlrAtKjVOwBag",
   "can_credit"=>true,
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "name"=>"Johann Bernoulli",
   "can_debit"=>false,
   "updated_at"=>"2014-01-16T20:01:45.341269Z",
   "href"=>"/bank_accounts/BAckBADsuYXlrAtKjVOwBag"},
 @hyperlinks=
  {"credits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "bank_account_verifications"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
