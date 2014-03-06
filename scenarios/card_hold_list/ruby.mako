% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x10e341c00
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
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>,
 #<Balanced::CardHold:0x10e338ec0
  @attributes=
   {"transaction_number"=>"HL975-858-6267",
    "failure_reason_code"=>nil,
    "amount"=>10000000,
    "links"=>
     {"debit"=>"WD3ESkGREiEVMTVdte6B2xQZ", "card"=>"CC3xcAcEO1uAKg6y8vInsuyy"},
    "expires_at"=>"2014-03-12T23:25:36.858680Z",
    "voided_at"=>nil,
    "failure_reason"=>nil,
    "description"=>nil,
    "created_at"=>"2014-03-05T23:25:36.340065Z",
    "id"=>"HL3EMy06BmBJMxC9usWzYxGp",
    "href"=>"/card_holds/HL3EMy06BmBJMxC9usWzYxGp",
    "meta"=>{},
    "currency"=>"USD",
    "updated_at"=>"2014-03-05T23:25:37.468666Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "debits"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "card"=>#<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "events"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>]

% endif
