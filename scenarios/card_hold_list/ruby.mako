% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x10eb80588
  @attributes=
   {"meta"=>{},
    "expires_at"=>"2014-01-23T20:00:53.690787Z",
    "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
    "amount"=>5000,
    "updated_at"=>"2014-01-16T20:00:55.167421Z",
    "failure_reason_code"=>nil,
    "id"=>"HL736xeYybSdGDib5WhKC4da",
    "currency"=>"USD",
    "transaction_number"=>"HL593-657-2348",
    "href"=>"/card_holds/HL736xeYybSdGDib5WhKC4da",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-01-16T20:00:53.510680Z",
    "failure_reason"=>nil},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "card"=>#<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "events"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>,
 #<Balanced::CardHold:0x10eb68730
  @attributes=
   {"meta"=>{},
    "expires_at"=>"2014-01-23T20:00:26.235297Z",
    "links"=>
     {"debit"=>"WD6xRpGDVdexXPBqx2s6vgQq", "card"=>"CC6wEuLTR6z3BBpeKNXIWU86"},
    "amount"=>10000000,
    "updated_at"=>"2014-01-16T20:00:27.055447Z",
    "failure_reason_code"=>nil,
    "id"=>"HL6xEJZ58ssnUWaFTvUAMRJw",
    "currency"=>"USD",
    "transaction_number"=>"HL202-400-2577",
    "href"=>"/card_holds/HL6xEJZ58ssnUWaFTvUAMRJw",
    "description"=>nil,
    "created_at"=>"2014-01-16T20:00:25.551020Z",
    "failure_reason"=>nil},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "debits"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "card"=>#<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "events"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>]

% endif
