% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.fetch('/cards/CC728b2nP8zS2QDI8lIIXcFk')
card.hold(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)
% elif mode == 'response':
#<Balanced::CardHold:0x108750ba8
 @attributes=
  {"created_at"=>"2014-01-16T20:01:05.101477Z",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "transaction_number"=>"HL299-404-9077",
   "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
   "failure_reason_code"=>nil,
   "id"=>"HL7gajSz8PjD83RO6ajA0VtB",
   "href"=>"/card_holds/HL7gajSz8PjD83RO6ajA0VtB",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:01:05.827832Z",
   "currency"=>"USD",
   "expires_at"=>"2014-01-23T20:01:05.603212Z"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
