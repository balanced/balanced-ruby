% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BAscOV2erMwv3yhIb5sFTaV')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fb79598bda0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-17T22:40:19.333713Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR1KskgNXcoA6e52QczoCYyF",
   "id"=>"CR1KskgNXcoA6e52QczoCYyF",
   "links"=>
    {"customer"=>"CUeXNjpejPooRtSnJLc6SRD",
     "destination"=>"BAscOV2erMwv3yhIb5sFTaV",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR808-363-1663",
   "updated_at"=>"2014-04-17T22:40:19.557731Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb79598a310/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fb795988a60/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb795992ba0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb7959921c8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb795990378/lib/balanced/utils.rb:6 (lambda)>}>

% endif
