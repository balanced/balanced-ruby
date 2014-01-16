% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA59GFIzMba9y9LuSrYZNaxy')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x108748890
 @attributes=
  {"transaction_number"=>"CR265-148-7967",
   "created_at"=>"2014-01-16T19:23:50.391729Z",
   "appears_on_statement_as"=>"example.com",
   "status"=>"succeeded",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:23:50.857679Z",
   "id"=>"CR5G3zUnXs5iWezeavFVpLlR",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>nil,
   "links"=>
    {"order"=>nil,
     "customer"=>"CU546zhmBDn3NEMyP7qXHqe4",
     "destination"=>"BA59GFIzMba9y9LuSrYZNaxy"},
   "currency"=>"USD",
   "href"=>"/credits/CR5G3zUnXs5iWezeavFVpLlR",
   "amount"=>5000},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "destination"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
