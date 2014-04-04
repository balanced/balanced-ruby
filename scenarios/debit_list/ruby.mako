% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fc09e121130
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-04-01T16:38:46.197439Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WDx4mKqQWmCevBueqfMcxoO",
    "id"=>"WDx4mKqQWmCevBueqfMcxoO",
    "links"=>
     {"customer"=>"CUb38G1IRIovbbaJlMMKUqG",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CCHv1QwjLfCxskorXDf8bmm"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W620-466-3407",
    "updated_at"=>"2014-04-01T16:38:46.984587Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fc09e12b630/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fc09e12aca8/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fc09e128ed0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fc09e1284f8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fc09e132700/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fc09e130e28/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fc09e130dd8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-04-01T16:38:32.640465Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WDhP7maX0Ymia6sAqaiwv3M",
    "id"=>"WDhP7maX0Ymia6sAqaiwv3M",
    "links"=>
     {"customer"=>"CU7ny5y6tdGmz5q0xDQJco9O",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CCnjE94RvMPW7RnmLdzIL42"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W966-476-5964",
    "updated_at"=>"2014-04-01T16:38:33.142867Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fc09e143258/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fc09e1428d0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fc09e140b48/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fc09e140170/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fc09e14a3a0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fc09e148ac8/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
