% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.find('/bank_accounts/BAckBADsuYXlrAtKjVOwBag')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x10eaa4b78
 @attributes=
  {"meta"=>{},
   "links"=>
    {"order"=>nil,
     "destination"=>"BAckBADsuYXlrAtKjVOwBag",
     "customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "amount"=>5000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:02:17.979920Z",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"example.com",
   "id"=>"CRKWhB8EqgH0vnlu2zoFiWA",
   "currency"=>"USD",
   "transaction_number"=>"CR962-784-9557",
   "href"=>"/credits/CRKWhB8EqgH0vnlu2zoFiWA",
   "description"=>nil,
   "created_at"=>"2014-01-16T20:02:16.117416Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "reversals"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
