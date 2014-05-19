% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2jJSjIixy2qkOMmIONPtXnawOUftBDRSK')

card = Balanced::Card.new(
  :expiration_month => '05',
  :expiration_year => '2020',
  :name => 'Johannes Bach',
  :number => '4342561111111118'
).save

% elif mode == 'response':
#<Balanced::Card:0x007f86fe899ba8
 @attributes=
  {"address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "avs_postal_match"=>nil,
   "avs_result"=>nil,
   "avs_street_match"=>nil,
   "bank_name"=>"WELLS FARGO BANK, N.A.",
   "brand"=>"Visa",
   "can_credit"=>true,
   "can_debit"=>true,
   "category"=>"other",
   "created_at"=>"2014-05-19T20:27:07.461892Z",
   "cvv"=>nil,
   "cvv_match"=>nil,
   "cvv_result"=>nil,
   "expiration_month"=>5,
   "expiration_year"=>2020,
   "fingerprint"=>
    "7dc93d35b59078a1da8e0ebd2cbec65a6ca205760a1be1b90a143d7f2b00e355",
   "href"=>"/cards/CC7nMc4BAti7DgvWmpGV5e6N",
   "id"=>"CC7nMc4BAti7DgvWmpGV5e6N",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>"Johannes Bach",
   "number"=>"xxxxxxxxxxxx1118",
   "type"=>"debit",
   "updated_at"=>"2014-05-19T20:27:07.461894Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007f86fe8d3ad8/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007f86fe8d1c60/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007f86fe8d12b0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007f86fe913408/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007f86fe911590/lib/balanced/utils.rb:6 (lambda)>}>

% endif
