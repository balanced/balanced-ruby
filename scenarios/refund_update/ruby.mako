% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

refund = Balanced::Refund.fetch('/refunds/RF4n5AfJ8MRB55oTzVWTRoVa')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fa0e13facf8
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-11-14T19:30:06.601027Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF4n5AfJ8MRB55oTzVWTRoVa",
   "id"=>"RF4n5AfJ8MRB55oTzVWTRoVa",
   "links"=>
    {"debit"=>"WD4heQm0HfB6IpymdvsGM8dv", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RFAWI-6JR-KYIV",
   "updated_at"=>"2014-11-14T19:31:15.200516Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fa0e13f7e90@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e13f7490@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e13f4e48@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e13f3d18@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
