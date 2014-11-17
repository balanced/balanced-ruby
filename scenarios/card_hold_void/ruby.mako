% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2U14YhpFdRACfJzlQNFI7m')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fa0e1b55bd8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-11-14T19:28:45.612075Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-11-21T19:28:45.868142Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL2U14YhpFdRACfJzlQNFI7m",
   "id"=>"HL2U14YhpFdRACfJzlQNFI7m",
   "links"=>{"card"=>"CC2E1bHjwNbYtzUcTAmH4kEM", "debit"=>nil, "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HLQG1-BTL-YXG4",
   "updated_at"=>"2014-11-14T19:28:46.396890Z",
   "voided_at"=>"2014-11-14T19:28:46.396893Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa0e08b6810@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa0e08b5eb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e08b3ae8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e08bdcc8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e08bd1d8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
