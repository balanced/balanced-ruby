% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fa93b7bd4f0
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-04-25T20:09:41.712497Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-05-02T20:09:41.878825Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL4bdnO7ELS2JfyJ2T8elYOl",
    "id"=>"HL4bdnO7ELS2JfyJ2T8elYOl",
    "links"=>{"card"=>"CC4auQXiAWMBxJcEUIMYeZFj", "debit"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL244-046-8353",
    "updated_at"=>"2014-04-25T20:09:42.023214Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa93b7b79b0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa93b7b6f60/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93b7b4df0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa93b7aefb8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fa93b7aef68
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-04-25T20:09:10.201844Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-05-02T20:09:10.501460Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL3BLQCYcUDdnWRrsy01Yqhf",
    "id"=>"HL3BLQCYcUDdnWRrsy01Yqhf",
    "links"=>
     {"card"=>"CC3B0K4gs5gKB5e1wawj8Rgx", "debit"=>"WD3BMUJeA9K2L4m7jqc7w9db"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL048-561-7017",
    "updated_at"=>"2014-04-25T20:09:10.970666Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa93b7ad2f8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa93b7a7948/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93b7a5788/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa93b79f7e8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
