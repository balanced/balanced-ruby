% if mode == 'definition':
Balanced::Refund.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

refund = Balanced::Refund.fetch('/refunds/RF4n5AfJ8MRB55oTzVWTRoVa')

% elif mode == 'response':
#<Balanced::Refund:0x007fa0e1412678
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-11-14T19:30:06.601027Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RF4n5AfJ8MRB55oTzVWTRoVa",
   "id"=>"RF4n5AfJ8MRB55oTzVWTRoVa",
   "links"=>
    {"debit"=>"WD4heQm0HfB6IpymdvsGM8dv", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RFAWI-6JR-KYIV",
   "updated_at"=>"2014-11-14T19:30:08.903273Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fa0e1410030@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e140f540@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e140cfe8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e140c3b8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
