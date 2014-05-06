% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA7zu6QXmylsn0o6qVpS8UO9')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fb60b1e38e0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-25T22:08:58.386422Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR1ynmPUlJGbV9EMyqkowHJP",
   "id"=>"CR1ynmPUlJGbV9EMyqkowHJP",
   "links"=>
    {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
     "destination"=>"BA7zu6QXmylsn0o6qVpS8UO9",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR964-486-9546",
   "updated_at"=>"2014-04-25T22:08:58.659857Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b1ed8b8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fb60b1f6cd8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b1f90c8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b1f83a8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60b208b18/lib/balanced/utils.rb:6 (lambda)>}>

% endif
