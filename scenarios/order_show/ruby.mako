% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

order = Balanced::Order.fetch('/orders/OR5sl2RJVnbwEf45nq5eATdz')

% elif mode == 'response':
#<Balanced::Order:0x007fa0e1488288
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-11-14T19:31:06.393967Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"Order #12341234",
   "href"=>"/orders/OR5sl2RJVnbwEf45nq5eATdz",
   "id"=>"OR5sl2RJVnbwEf45nq5eATdz",
   "links"=>{"merchant"=>"CU40AyvBB6ny9u3oelCwyc3C"},
   "meta"=>{},
   "updated_at"=>"2014-11-14T19:31:06.393968Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fa0e14853f8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa0e1482a18@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e14802e0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fa0e147e170@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa0e147b420@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e1478d60@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
