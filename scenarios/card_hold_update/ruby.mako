% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card_hold = Balanced::CardHold.find('/card_holds/HL736xeYybSdGDib5WhKC4da')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x10ea9de18
 @attributes=
  {"meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "expires_at"=>"2014-01-23T20:00:53.690787Z",
   "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:00:59.350355Z",
   "failure_reason_code"=>nil,
   "id"=>"HL736xeYybSdGDib5WhKC4da",
   "currency"=>"USD",
   "transaction_number"=>"HL593-657-2348",
   "href"=>"/card_holds/HL736xeYybSdGDib5WhKC4da",
   "description"=>"update this description",
   "created_at"=>"2014-01-16T20:00:53.510680Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
