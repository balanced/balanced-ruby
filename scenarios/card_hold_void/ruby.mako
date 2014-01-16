% if mode == 'definition':
Balanced::CardHold.void

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card_hold = Balanced::CardHold.find('/card_holds/HL7gajSz8PjD83RO6ajA0VtB')
card_hold.void
% elif mode == 'response':
#<Balanced::CardHold:0x10ea0be00
 @attributes=
  {"meta"=>{},
   "expires_at"=>"2014-01-23T20:01:05.603212Z",
   "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:01:07.726872Z",
   "failure_reason_code"=>nil,
   "id"=>"HL7gajSz8PjD83RO6ajA0VtB",
   "currency"=>"USD",
   "transaction_number"=>"HL299-404-9077",
   "href"=>"/card_holds/HL7gajSz8PjD83RO6ajA0VtB",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:01:05.101477Z",
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
