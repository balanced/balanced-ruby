% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x1086e6de8
  @attributes=
   {"created_at"=>"2014-01-16T20:00:53.510680Z",
    "meta"=>{},
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "transaction_number"=>"HL593-657-2348",
    "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
    "failure_reason_code"=>nil,
    "id"=>"HL736xeYybSdGDib5WhKC4da",
    "href"=>"/card_holds/HL736xeYybSdGDib5WhKC4da",
    "amount"=>5000,
    "updated_at"=>"2014-01-16T20:00:55.167421Z",
    "currency"=>"USD",
    "expires_at"=>"2014-01-23T20:00:53.690787Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "card"=>#<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>,
 #<Balanced::CardHold:0x1086cd848
  @attributes=
   {"created_at"=>"2014-01-16T20:00:25.551020Z",
    "meta"=>{},
    "failure_reason"=>nil,
    "description"=>nil,
    "transaction_number"=>"HL202-400-2577",
    "links"=>
     {"debit"=>"WD6xRpGDVdexXPBqx2s6vgQq", "card"=>"CC6wEuLTR6z3BBpeKNXIWU86"},
    "failure_reason_code"=>nil,
    "id"=>"HL6xEJZ58ssnUWaFTvUAMRJw",
    "href"=>"/card_holds/HL6xEJZ58ssnUWaFTvUAMRJw",
    "amount"=>10000000,
    "updated_at"=>"2014-01-16T20:00:27.055447Z",
    "currency"=>"USD",
    "expires_at"=>"2014-01-23T20:00:26.235297Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "card"=>#<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>]

% endif
