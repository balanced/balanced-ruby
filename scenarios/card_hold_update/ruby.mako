% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4a1BKhDiVV9Ueh9MTozVDs')
card_hold.description = 'update this description'
card_hold.meta = {
    'meaningful.key' => 'some.value',
    'holding.for' => 'user1'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x1066e62f0
 @attributes=
  {"status"=>"succeeded",
   "voided_at"=>nil,
   "links"=>{"debit"=>nil, "card"=>"CC3ZsWHP2jMgvFrrzDzfZS0q"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:26:01.450567Z",
   "href"=>"/card_holds/HL4a1BKhDiVV9Ueh9MTozVDs",
   "description"=>"update this description",
   "amount"=>5000,
   "transaction_number"=>"HL143-599-1267",
   "id"=>"HL4a1BKhDiVV9Ueh9MTozVDs",
   "failure_reason_code"=>nil,
   "expires_at"=>"2014-03-12T23:26:01.582417Z",
   "updated_at"=>"2014-03-05T23:26:05.389848Z",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "failure_reason"=>nil},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
