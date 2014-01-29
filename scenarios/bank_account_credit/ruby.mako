% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3qNbYRqFM0Q7MXn3IcjGl0')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fdc9b190878
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-01-27T22:58:19.422292Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR40neytmVG2HDBp1opfF7sY",
   "id"=>"CR40neytmVG2HDBp1opfF7sY",
   "links"=>
    {"customer"=>"CU3eeasZ9yQ86uzzIYZkrPGg",
     "destination"=>"BA3qNbYRqFM0Q7MXn3IcjGl0",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR816-868-3666",
   "updated_at"=>"2014-01-27T22:58:20.346871Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fdc9b804d08/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fdc9b814960/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9b827ab0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9b10fb60/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fdc9b82e040/lib/balanced/utils.rb:6 (lambda)>}>

% endif
