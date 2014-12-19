% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

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
#<Balanced::Customer:0x007fcde18bf590
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>"48120",
     "state"=>nil},
   "business_name"=>nil,
   "created_at"=>"2014-12-17T21:25:22.336415Z",
   "dob_month"=>7,
   "dob_year"=>1963,
   "ein"=>nil,
   "email"=>nil,
   "href"=>"/customers/CU7yoUz1HuDE7t7p9GcVNYbz",
   "id"=>"CU7yoUz1HuDE7t7p9GcVNYbz",
   "links"=>{"destination"=>nil, "source"=>nil},
   "merchant_status"=>"underwritten",
   "meta"=>{},
   "name"=>"Henry Ford",
   "phone"=>nil,
   "ssn_last4"=>nil,
   "updated_at"=>"2014-12-17T21:25:22.548971Z"},
 @hyperlinks=
  {"accounts"=>
    #<Proc:0x007fcde18bd470/lib/balanced/utils.rb:6 (lambda)>,
   "bank_accounts"=>
    #<Proc:0x007fcde18b7548/lib/balanced/utils.rb:6 (lambda)>,
   "card_holds"=>
    #<Proc:0x007fcde18b5608/lib/balanced/utils.rb:6 (lambda)>,
   "cards"=>
    #<Proc:0x007fcde18af690/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fcde18ad660/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde18a7440/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde18a6a40/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fcde18a4948/lib/balanced/utils.rb:6 (lambda)>,
   "external_accounts"=>
    #<Proc:0x007fcde189e318/lib/balanced/utils.rb:6 (lambda)>,
   "orders"=>
    #<Proc:0x007fcde189c108/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde1895d80/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde188fde0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde188ee68/lib/balanced/utils.rb:6 (lambda)>,
   "transactions"=>
    #<Proc:0x007fcde188ce38/lib/balanced/utils.rb:6 (lambda)>}>

% endif
