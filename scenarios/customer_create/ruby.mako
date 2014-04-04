% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

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
#<Balanced::Customer:0x007fc09ca49b60
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-04-01T16:39:01.740107Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU116TOiXnCfxHyDErDcMtpU",
   "id"=>"CU116TOiXnCfxHyDErDcMtpU",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-04-01T16:39:02.667469Z"},
 @hyperlinks=
  {"bank_accounts"=>
    #<Proc:0x007fc09ca47590/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fc09ca44818/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fc09ca426d0/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fc09ca43058/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fc09ca3a020/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fc09ca395d0/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fc09ca2b840/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fc09ca29810/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09ca23a78/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fc09ca21a20/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09ca20fa8/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fc09ca1b210/lib/balanced/utils.rb:6 (lambda)>}>

% endif
