% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.new(
  :type => 'checking',
  :routing_number => '121000358',
  :name => 'Johann Bernoulli',
  :account_number => '9900000001'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x10eb02548
 @attributes=
  {"meta"=>{},
   "account_type"=>"checking",
   "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
   "can_debit"=>false,
   "updated_at"=>"2014-01-16T20:01:45.341269Z",
   "can_credit"=>true,
   "id"=>"BAckBADsuYXlrAtKjVOwBag",
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "routing_number"=>"121000358",
   "name"=>"Johann Bernoulli",
   "href"=>"/bank_accounts/BAckBADsuYXlrAtKjVOwBag",
   "created_at"=>"2014-01-16T20:01:45.341266Z",
   "account_number"=>"xxxxxx0001",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14"},
 @hyperlinks=
  {"debits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "bank_account_verifications"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
