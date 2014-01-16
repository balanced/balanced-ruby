% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.find('/bank_accounts/BAckBADsuYXlrAtKjVOwBag')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x101f40950
 @attributes=
  {"meta"=>{},
   "currency"=>"USD",
   "links"=>
    {"order"=>nil,
     "destination"=>"BAckBADsuYXlrAtKjVOwBag",
     "customer"=>"CU5yzA5nhWv5Ljlr1ZEaYia"},
   "appears_on_statement_as"=>"example.com",
   "status"=>"succeeded",
   "failure_reason_code"=>nil,
   "description"=>nil,
   "created_at"=>"2014-01-16T20:02:16.117416Z",
   "id"=>"CRKWhB8EqgH0vnlu2zoFiWA",
   "amount"=>5000,
   "failure_reason"=>nil,
   "transaction_number"=>"CR962-784-9557",
   "updated_at"=>"2014-01-16T20:02:17.979920Z",
   "href"=>"/credits/CRKWhB8EqgH0vnlu2zoFiWA"},
 @hyperlinks=
  {"order"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
   "customer"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
