% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BAckBADsuYXlrAtKjVOwBag')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x10860dcc8
 @attributes=
  {"created_at"=>"2014-01-16T20:02:16.117416Z",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>nil,
   "transaction_number"=>"CR962-784-9557",
   "status"=>"succeeded",
   "links"=>
    {"customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia",
     "destination"=>"BAckBADsuYXlrAtKjVOwBag",
     "order"=>nil},
   "failure_reason_code"=>nil,
   "id"=>"CRKWhB8EqgH0vnlu2zoFiWA",
   "href"=>"/credits/CRKWhB8EqgH0vnlu2zoFiWA",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:02:17.979920Z",
   "currency"=>"USD",
   "appears_on_statement_as"=>"example.com"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "reversals"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
