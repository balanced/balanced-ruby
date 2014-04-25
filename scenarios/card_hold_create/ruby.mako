% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::Card.fetch('/cards/CC4auQXiAWMBxJcEUIMYeZFj')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fa93b7e5ea0
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
   "updated_at"=>"2014-04-25T20:09:49.228091Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa93b7e41e0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa93b7df898/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93b7dd8e0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93b7d78a0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
