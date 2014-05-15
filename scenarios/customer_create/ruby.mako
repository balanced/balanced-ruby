% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

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
#<Balanced::Customer:0x007fa7d40c7488
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-05-15T00:41:30.318855Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU56PvhKAwSiV6LahZCcBMJ7",
   "id"=>"CU56PvhKAwSiV6LahZCcBMJ7",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-05-15T00:41:34.844176Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fa7d40bd230/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fa7d40b5788/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fa7d40af860/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa7d40ad9e8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d409f758/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fa7d409ecb8/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa7d409ca08/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fa7d4096950/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fa7d40947e0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d408e750/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d408c4f0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d4087a90/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fa7d4085bf0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
