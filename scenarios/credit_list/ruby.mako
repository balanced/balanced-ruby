% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007fb60b3ba560
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"example.com",
    "created_at"=>"2014-04-25T22:00:40.640801Z",
    "currency"=>"USD",
    "description"=>nil,
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/credits/CRjCksasJ36xjkBXRYvlCh7",
    "id"=>"CRjCksasJ36xjkBXRYvlCh7",
    "links"=>
     {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
      "destination"=>"BA7zu6QXmylsn0o6qVpS8UO9",
      "order"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"CR574-547-8777",
    "updated_at"=>"2014-04-25T22:00:41.046644Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fb60b3b7928/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007fb60b3b5510/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fb60b3b3170/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fb60b3b2720/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb60b3af2a0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
