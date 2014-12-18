% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6FZjm2W2mK0DIQibA1sjHv')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fcde195f158
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-12-17T21:26:05.270762Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CRxBIVaPCDZEbVgE1Jb0jkc",
   "id"=>"CRxBIVaPCDZEbVgE1Jb0jkc",
   "links"=>
    {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
     "destination"=>"BA6FZjm2W2mK0DIQibA1sjHv",
     "order"=>nil},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"CRO2C-OJ8-PQSK",
   "updated_at"=>"2014-12-17T21:26:05.739244Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fcde195d628/lib/balanced/resources/resource.rb:56 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde1967c90/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1965ee0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1965508/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde196f710/lib/balanced/utils.rb:6 (lambda)>}>

% endif
