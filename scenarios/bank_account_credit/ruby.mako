% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6bLGpQZPOiTNRxF24rMd9m')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fa4e412db40
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-03-06T19:23:54.514782Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR6NpuEtezCdLTYngDrSEODv",
   "id"=>"CR6NpuEtezCdLTYngDrSEODv",
   "links"=>
    {"customer"=>"CU64R7DS6DwuXYVg9RTskFK8",
     "destination"=>"BA6bLGpQZPOiTNRxF24rMd9m",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR855-415-1670",
   "updated_at"=>"2014-03-06T19:23:55.019500Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa4e411fe50/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa4e411e230/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa4e4117980/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa4e4116dc8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa4e4114b90/lib/balanced/utils.rb:6 (lambda)>}>

% endif
