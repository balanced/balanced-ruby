% if mode == 'definition':
Balanced::CardHold.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card_hold = Balanced::CardHold.find('/card_holds/HL2AG5YIRZsWCFh5NwigrvJg')

% elif mode == 'response':
#<Balanced::CardHold:0x107482ad0
 @attributes=
  {"transaction_number"=>"HL158-440-0378",
   "failure_reason_code"=>nil,
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:56:47.739259Z",
   "meta"=>{},
   "links"=>{"card"=>"CC2zLkKYc57B1SMT5i13W63m", "debit"=>nil},
   "href"=>"/card_holds/HL2AG5YIRZsWCFh5NwigrvJg",
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "id"=>"HL2AG5YIRZsWCFh5NwigrvJg",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:56:48.012890Z",
   "expires_at"=>"2014-01-23T19:56:47.878623Z"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "debits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
