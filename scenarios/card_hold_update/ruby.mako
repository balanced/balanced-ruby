% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4bdnO7ELS2JfyJ2T8elYOl')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fa93b74c868
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-25T20:09:41.712497Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-05-02T20:09:41.878825Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL4bdnO7ELS2JfyJ2T8elYOl",
   "id"=>"HL4bdnO7ELS2JfyJ2T8elYOl",
   "links"=>{"card"=>"CC4auQXiAWMBxJcEUIMYeZFj", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL244-046-8353",
   "updated_at"=>"2014-04-25T20:09:45.729280Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa93b746c10/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa93b745f90/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93b746788/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93b73dcf0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
