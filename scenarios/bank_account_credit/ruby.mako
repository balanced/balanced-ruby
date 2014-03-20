% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6S1rsNWTCwBugJqjBNQbJU')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fbaa40f5bc0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-03-20T18:18:32.274740Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CRl8vsIfwYjpcYnDk0K0ILQ",
   "id"=>"CRl8vsIfwYjpcYnDk0K0ILQ",
   "links"=>
    {"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw",
     "destination"=>"BA6S1rsNWTCwBugJqjBNQbJU",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR243-939-8881",
   "updated_at"=>"2014-03-20T18:18:32.685804Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa40f4090/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fbaa49c26e0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa49c0908/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa49cbee8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa49ca138/lib/balanced/utils.rb:6 (lambda)>}>

% endif
