% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

credit = Balanced::Credit.fetch('/credits/CROijU7WflyjITPTGU9GMlL')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fb794909748
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-17T22:39:27.622238Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CROijU7WflyjITPTGU9GMlL",
   "id"=>"CROijU7WflyjITPTGU9GMlL",
   "links"=>
    {"customer"=>"CUeXNjpejPooRtSnJLc6SRD",
     "destination"=>"BAscOV2erMwv3yhIb5sFTaV",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR574-106-7569",
   "updated_at"=>"2014-04-17T22:39:33.204162Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb7948f8510/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fb7948f0748/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb7948e1e50/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb7948e0190/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb7948d2db0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
