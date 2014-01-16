% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x10723ff98
  @attributes=
   {"dob_year"=>1963,
    "phone"=>nil,
    "name"=>"Henry Ford",
    "dob_month"=>7,
    "address"=>
     {"postal_code"=>"48120",
      "line2"=>nil,
      "line1"=>nil,
      "country_code"=>nil,
      "city"=>nil,
      "state"=>nil},
    "created_at"=>"2014-01-16T19:57:20.913610Z",
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "links"=>{"destination"=>nil, "source"=>nil},
    "href"=>"/customers/CU3bZmNvHKhRAUud1ua07Zji",
    "ein"=>nil,
    "id"=>"CU3bZmNvHKhRAUud1ua07Zji",
    "updated_at"=>"2014-01-16T19:57:21.386271Z",
    "ssn_last4"=>nil,
    "email"=>nil,
    "business_name"=>nil},
  @hyperlinks=
   {"destination"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "reversals"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_accounts"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "cards"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "orders"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "transactions"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Customer:0x1074aeb80
  @attributes=
   {"dob_year"=>1963,
    "phone"=>nil,
    "name"=>"Henry Ford",
    "dob_month"=>7,
    "address"=>
     {"postal_code"=>"48120",
      "line2"=>nil,
      "line1"=>nil,
      "country_code"=>nil,
      "city"=>nil,
      "state"=>nil},
    "created_at"=>"2014-01-16T19:57:08.705107Z",
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "links"=>{"destination"=>nil, "source"=>nil},
    "href"=>"/customers/CU2Yg3vl9HHlLwM3sJkyHjsa",
    "ein"=>nil,
    "id"=>"CU2Yg3vl9HHlLwM3sJkyHjsa",
    "updated_at"=>"2014-01-16T19:57:09.850556Z",
    "ssn_last4"=>nil,
    "email"=>nil,
    "business_name"=>nil},
  @hyperlinks=
   {"destination"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "reversals"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card_holds"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_accounts"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "cards"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "orders"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "refunds"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "transactions"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
