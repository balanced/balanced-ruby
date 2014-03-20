% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

customer = Balanced::Customer.new(
  :address => {
    :postal_code => '48120'
  },
  :dob_month => 7,
  :dob_year => 1963,
  :name => 'Henry Ford'
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x007fbaa1b818a8
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-03-20T18:18:08.388671Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU7HlonBKQXhBkwRJdO2kZen",
   "id"=>"CU7HlonBKQXhBkwRJdO2kZen",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-03-20T18:18:08.970085Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fbaa1b7b750/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fbaa1b794c8/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fbaa1b73730/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fbaa1b71840/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fbaa1b6b940/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fbaa1b6af90/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fbaa1b68fd8/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fbaa1b631c8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa1b61198/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa1b5b158/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa1b5a438/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fbaa1b58980/lib/balanced/utils.rb:6 (lambda)>}>

% endif
