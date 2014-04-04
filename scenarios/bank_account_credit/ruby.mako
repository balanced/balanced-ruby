% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BAd2UKqX83C1p7fhmMx5pmW')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fc09e168a30
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-01T16:39:25.389308Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR1gIgujcGCCERRlL4KwljLG",
   "id"=>"CR1gIgujcGCCERRlL4KwljLG",
   "links"=>
    {"customer"=>"CUb38G1IRIovbbaJlMMKUqG",
     "destination"=>"BAd2UKqX83C1p7fhmMx5pmW",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR084-115-5684",
   "updated_at"=>"2014-04-01T16:39:25.714544Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fc09e172f58/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fc09e1716a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e17b7c0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09e17ade8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09e178f98/lib/balanced/utils.rb:6 (lambda)>}>

% endif
