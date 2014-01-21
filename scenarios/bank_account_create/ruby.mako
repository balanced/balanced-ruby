% if mode == 'definition':
Balanced::BankAccount.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.new(
  :name => 'Johann Bernoulli',
  :routing_number => '121000358',
  :account_number => '9900000001',
  :type => 'checking'
).save

% elif mode == 'response':
#<Balanced::BankAccount:0x10866bf58
 @attributes=
  {"name"=>"Johann Bernoulli",
   "created_at"=>"2014-01-16T20:01:45.341266Z",
   "can_debit"=>false,
   "routing_number"=>"121000358",
   "account_number"=>"xxxxxx0001",
   "meta"=>{},
   "account_type"=>"checking",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
   "id"=>"BAckBADsuYXlrAtKjVOwBag",
   "href"=>"/bank_accounts/BAckBADsuYXlrAtKjVOwBag",
   "updated_at"=>"2014-01-16T20:01:45.341269Z",
   "can_credit"=>true,
   "bank_name"=>"BANK OF AMERICA, N.A."},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "bank_account_verifications"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
