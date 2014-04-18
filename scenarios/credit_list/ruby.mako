% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007fb794a04170
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
     #<Proc:0x007fb7949f33e8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007fb7949eba08/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fb7949e03b0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb7949daff0/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb7949d35e8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
