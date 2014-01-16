% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x108823350
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
    "card"=>
     #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>,
 #<Balanced::CardHold:0x10880b778
  @attributes=
   {"transaction_number"=>"HL266-501-1233",
    "created_at"=>"2014-01-16T19:22:09.664712Z",
    "meta"=>{},
    "updated_at"=>"2014-01-16T19:22:11.123923Z",
    "id"=>"HL3QKotsqd5RHlfRGHXW3pao",
    "failure_reason_code"=>nil,
    "failure_reason"=>nil,
    "description"=>nil,
    "links"=>
     {"debit"=>"WD3QSwfh5RAXITJjIwSapdTO", "card"=>"CC3PKVp2Ym8PblTLq2czGHX4"},
    "currency"=>"USD",
    "href"=>"/card_holds/HL3QKotsqd5RHlfRGHXW3pao",
    "expires_at"=>"2014-01-23T19:22:10.359438Z",
    "amount"=>10000000},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
    "events"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card"=>
     #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>]

% endif
