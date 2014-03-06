% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4a1BKhDiVV9Ueh9MTozVDs')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x10e2f00a8
 @attributes=
  {"transaction_number"=>"HL143-599-1267",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "links"=>{"debit"=>nil, "card"=>"CC3ZsWHP2jMgvFrrzDzfZS0q"},
   "expires_at"=>"2014-03-12T23:26:01.582417Z",
   "voided_at"=>nil,
   "failure_reason"=>nil,
   "description"=>"update this description",
   "created_at"=>"2014-03-05T23:26:01.450567Z",
   "id"=>"HL4a1BKhDiVV9Ueh9MTozVDs",
   "href"=>"/card_holds/HL4a1BKhDiVV9Ueh9MTozVDs",
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:05.389848Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
