% if mode == 'definition':
Balanced::Order.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

orders = Balanced::Order.all
% elif mode == 'response':
[#<Balanced::Order:0x007fa0e14c5368
  @attributes=
   {"amount"=>10000,
    "amount_escrowed"=>5000,
    "created_at"=>"2014-11-14T19:29:24.701393Z",
    "currency"=>"USD",
    "delivery_address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "description"=>"Order #12341234",
    "href"=>"/orders/OR3BXTqXewuSy1Cu3g6N2Sjj",
    "id"=>"OR3BXTqXewuSy1Cu3g6N2Sjj",
    "links"=>{"merchant"=>"CU2718cI8PkMdFyPjboZLZfn"},
    "meta"=>{},
    "updated_at"=>"2014-11-14T19:29:24.701395Z"},
  @hyperlinks=
   {"buyers"=>
     #<Proc:0x007fa0e14c22f8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa0e14bfe18@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e14bd708@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fa0e14bb480@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa0e14b8e38@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa0e14b6250@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Order:0x007fa0e14b6200
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
     #<Proc:0x007fa0e14b3640@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa0e14b08c8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e14ae208@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "merchant"=>
     #<Proc:0x007fa0e14ac070@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa0e14a9a50@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa0e14a6f08@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
