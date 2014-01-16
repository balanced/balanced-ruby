% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card_hold = Balanced::CardHold.find('/card_holds/HL2AG5YIRZsWCFh5NwigrvJg')
card_hold.description = 'update this description'
card_hold.meta = {
    'meaningful.key' => 'some.value',
    'holding.for' => 'user1'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x1074259c0
 @attributes=
  {"transaction_number"=>"HL158-440-0378",
   "failure_reason_code"=>nil,
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:56:47.739259Z",
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "links"=>{"card"=>"CC2zLkKYc57B1SMT5i13W63m", "debit"=>nil},
   "href"=>"/card_holds/HL2AG5YIRZsWCFh5NwigrvJg",
   "failure_reason"=>nil,
   "description"=>"update this description",
   "id"=>"HL2AG5YIRZsWCFh5NwigrvJg",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:56:52.257240Z",
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
