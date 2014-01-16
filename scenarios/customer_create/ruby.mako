% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

customer = Balanced::Customer.new(
  :dob_month => 7,
  :dob_year => 1963,
  :name => 'Henry Ford',
  :address => {
    :postal_code => '48120'
  }
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x1086c0d78
 @attributes=
  {"dob_month"=>7,
   "phone"=>nil,
   "dob_year"=>1963,
   "created_at"=>"2014-01-16T19:23:16.669562Z",
   "name"=>"Henry Ford",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:23:17.337303Z",
   "id"=>"CU546zhmBDn3NEMyP7qXHqe4",
   "merchant_status"=>"underwritten",
   "links"=>{"destination"=>nil, "source"=>nil},
   "ein"=>nil,
   "address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "postal_code"=>"48120",
     "line2"=>nil,
     "line1"=>nil,
     "state"=>nil},
   "href"=>"/customers/CU546zhmBDn3NEMyP7qXHqe4",
   "email"=>nil,
   "business_name"=>nil,
   "ssn_last4"=>nil},
 @hyperlinks=
  {"cards"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "bank_accounts"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "orders"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "transactions"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
