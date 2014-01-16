% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::Card.find('/cards/CC4jTPaidxCdN7kXVsTfkM1W')
card.hold(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)
% elif mode == 'response':
#<Balanced::CardHold:0x10888f708
 @attributes=
  {"transaction_number"=>"HL345-799-6958",
   "created_at"=>"2014-01-16T19:22:45.058598Z",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:22:45.427444Z",
   "id"=>"HL4uyfhgfi823c4Y6g3KjOD6",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "links"=>{"debit"=>nil, "card"=>"CC4jTPaidxCdN7kXVsTfkM1W"},
   "currency"=>"USD",
   "href"=>"/card_holds/HL4uyfhgfi823c4Y6g3KjOD6",
   "expires_at"=>"2014-01-23T19:22:45.261077Z",
   "amount"=>5000},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>

% endif
