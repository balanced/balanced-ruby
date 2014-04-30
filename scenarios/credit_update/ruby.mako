% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

credit = Balanced::Credit.fetch('/credits/CRjCksasJ36xjkBXRYvlCh7')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fb60b357cd0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-25T22:00:40.640801Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CRjCksasJ36xjkBXRYvlCh7",
   "id"=>"CRjCksasJ36xjkBXRYvlCh7",
   "links"=>
    {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
     "destination"=>"BA7zu6QXmylsn0o6qVpS8UO9",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR574-547-8777",
   "updated_at"=>"2014-04-25T22:00:45.823737Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b355520/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fb60b352ff0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b34fcd8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b34ef18/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60b34bd18/lib/balanced/utils.rb:6 (lambda)>}>

% endif
