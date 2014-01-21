% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card_hold = Balanced::CardHold.fetch('/card_holds/HL736xeYybSdGDib5WhKC4da')
card_hold.description = 'update this description'
card_hold.meta = {
    'meaningful.key' => 'some.value',
    'holding.for' => 'user1'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x108605fc8
 @attributes=
  {"created_at"=>"2014-01-16T20:00:53.510680Z",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "failure_reason"=>nil,
   "description"=>"update this description",
   "transaction_number"=>"HL593-657-2348",
   "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
   "failure_reason_code"=>nil,
   "id"=>"HL736xeYybSdGDib5WhKC4da",
   "href"=>"/card_holds/HL736xeYybSdGDib5WhKC4da",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:00:59.350355Z",
   "currency"=>"USD",
   "expires_at"=>"2014-01-23T20:00:53.690787Z"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
