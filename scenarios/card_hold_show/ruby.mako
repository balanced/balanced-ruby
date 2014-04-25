% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4bdnO7ELS2JfyJ2T8elYOl')

% elif mode == 'response':
#<Balanced::CardHold:0x007fa93b774958
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
    #<Proc:0x007fa93b76ecd8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa93b76e300/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa93b76c2f8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93b766268/lib/balanced/utils.rb:6 (lambda)>}>

% endif
