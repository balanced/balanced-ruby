% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fb793b46ea8
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-04-17T22:39:06.875506Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-04-24T22:39:06.984691Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HLqY5FcrUWcnBzMkHpKK1WB",
    "id"=>"HLqY5FcrUWcnBzMkHpKK1WB",
    "links"=>{"card"=>"CCCk1CEzUN0gDA5qh8um0rv", "debit"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL019-852-0737",
    "updated_at"=>"2014-04-17T22:39:07.063348Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fb793b453c8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fb793b44978/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793b3eaf0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb793b3cb88/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fb793b3cb38
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-04-17T22:38:37.899811Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-04-24T22:38:38.142449Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL6oIBR6m4BzAeUXosLwfkl",
    "id"=>"HL6oIBR6m4BzAeUXosLwfkl",
    "links"=>
     {"card"=>"CC5DFSUEWpcjqEpKk9C7zHr", "debit"=>"WD6pyKzMk7d3rOqmqd4UE8F"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL939-753-8065",
    "updated_at"=>"2014-04-17T22:38:38.586817Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fb793b36f30/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fb793b35658/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793b2f668/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb793b2d7a0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
