% if mode == 'definition':
Balanced::Customer.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

customer = Balanced::Customer.find('/customers/CU3bZmNvHKhRAUud1ua07Zji')
customer.email = 'email@newdomain.com'
customer.meta = {
    'shipping-preference' => 'ground'
}
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x1074502d8
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
   "meta"=>{"shipping-preference"=>"ground"},
   "links"=>{"destination"=>nil, "source"=>nil},
   "href"=>"/customers/CU3bZmNvHKhRAUud1ua07Zji",
   "ein"=>nil,
   "id"=>"CU3bZmNvHKhRAUud1ua07Zji",
   "updated_at"=>"2014-01-16T19:57:24.922182Z",
   "ssn_last4"=>nil,
   "email"=>"email@newdomain.com",
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
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
