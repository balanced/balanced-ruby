% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::Card.find('/cards/CC2zLkKYc57B1SMT5i13W63m')
card.hold(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)
% elif mode == 'response':
#<Balanced::CardHold:0x107577508
 @attributes=
  {"transaction_number"=>"HL258-611-3571",
   "failure_reason_code"=>nil,
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:56:55.956972Z",
   "meta"=>{},
   "links"=>{"card"=>"CC2zLkKYc57B1SMT5i13W63m", "debit"=>nil},
   "href"=>"/card_holds/HL2JVeS8OyiDHpyaxhJWGYH6",
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "id"=>"HL2JVeS8OyiDHpyaxhJWGYH6",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:56:56.358698Z",
   "expires_at"=>"2014-01-23T19:56:56.207969Z"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "debits"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
