% if mode == 'definition':
Balanced::CardHold.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card_hold = Balanced::CardHold.find('/card_holds/HL4kU88pFb3U5eNoPfVqwRaE')

% elif mode == 'response':
#<Balanced::CardHold:0x10879caa8
 @attributes=
  {"transaction_number"=>"HL105-459-1809",
   "created_at"=>"2014-01-16T19:22:36.481273Z",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:22:36.845589Z",
   "id"=>"HL4kU88pFb3U5eNoPfVqwRaE",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "links"=>{"debit"=>nil, "card"=>"CC4jTPaidxCdN7kXVsTfkM1W"},
   "currency"=>"USD",
   "href"=>"/card_holds/HL4kU88pFb3U5eNoPfVqwRaE",
   "expires_at"=>"2014-01-23T19:22:36.636383Z",
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
