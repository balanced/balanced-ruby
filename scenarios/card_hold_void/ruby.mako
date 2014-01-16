% if mode == 'definition':
Balanced::CardHold.void

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card_hold = Balanced::CardHold.find('/card_holds/HL7gajSz8PjD83RO6ajA0VtB')
card_hold.void
% elif mode == 'response':
#<Balanced::CardHold:0x101eaa798
 @attributes=
  {"meta"=>{},
   "currency"=>"USD",
   "links"=>{"debit"=>nil, "card"=>"CC728b2nP8zS2QDI8lIIXcFk"},
   "failure_reason_code"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:01:05.101477Z",
   "id"=>"HL7gajSz8PjD83RO6ajA0VtB",
   "expires_at"=>"2014-01-23T20:01:05.603212Z",
   "amount"=>5000,
   "failure_reason"=>nil,
   "transaction_number"=>"HL299-404-9077",
   "updated_at"=>"2014-01-16T20:01:07.726872Z",
   "href"=>"/card_holds/HL7gajSz8PjD83RO6ajA0VtB"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
