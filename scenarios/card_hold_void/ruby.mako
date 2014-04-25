% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4joUazeM3BJE6emmv2Q8EF')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fa93b71db58
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-25T20:09:48.990540Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-05-02T20:09:49.096484Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL4joUazeM3BJE6emmv2Q8EF",
   "id"=>"HL4joUazeM3BJE6emmv2Q8EF",
   "links"=>{"card"=>"CC4auQXiAWMBxJcEUIMYeZFj", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL161-849-8610",
   "updated_at"=>"2014-04-25T20:09:49.731653Z",
   "voided_at"=>"2014-04-25T20:09:49.731656Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa93b71f9d0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa93b717618/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93b715520/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93b70f698/lib/balanced/utils.rb:6 (lambda)>}>

% endif
