% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4a1BKhDiVV9Ueh9MTozVDs')

% elif mode == 'response':
#<Balanced::CardHold:0x10e30c898
 @attributes=
  {"transaction_number"=>"HL143-599-1267",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "links"=>{"debit"=>nil, "card"=>"CC3ZsWHP2jMgvFrrzDzfZS0q"},
   "expires_at"=>"2014-03-12T23:26:01.582417Z",
   "voided_at"=>nil,
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-03-05T23:26:01.450567Z",
   "id"=>"HL4a1BKhDiVV9Ueh9MTozVDs",
   "href"=>"/card_holds/HL4a1BKhDiVV9Ueh9MTozVDs",
   "meta"=>{},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:01.708381Z",
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
