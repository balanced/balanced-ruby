% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2RqFlRIm0xqCNnHJNLYWMd')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fa7d1dbbe08
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-05-15T00:43:41.582121Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7ushK6kWjPJYdh24QoM1A9",
   "id"=>"CR7ushK6kWjPJYdh24QoM1A9",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "destination"=>"BA2RqFlRIm0xqCNnHJNLYWMd",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR169-215-3928",
   "updated_at"=>"2014-05-15T00:43:46.428002Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d1db3910/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa7d1daaea0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d1da23e0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d1da0f68/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d1d913b0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
