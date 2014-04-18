% if mode == 'definition':
Balanced::Credit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

credit = Balanced::Credit.fetch('/credits/CROijU7WflyjITPTGU9GMlL')
% elif mode == 'response':
#<Balanced::Credit:0x007fb79497af88
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-17T22:39:27.622238Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CROijU7WflyjITPTGU9GMlL",
   "id"=>"CROijU7WflyjITPTGU9GMlL",
   "links"=>
    {"customer"=>"CUeXNjpejPooRtSnJLc6SRD",
     "destination"=>"BAscOV2erMwv3yhIb5sFTaV",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR574-106-7569",
   "updated_at"=>"2014-04-17T22:39:27.978440Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb794973170/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fb79496b718/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb79495bcc8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb79495a850/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb7949605c0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
