% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::Card.new(
  :cvv => '123',
  :number => '5105105105105100',
  :expiration_year => '2020',
  :expiration_month => '12'
).save

% elif mode == 'response':
#<Balanced::Card:0x1067be4e8
 @attributes=
  {"cvv"=>"xxx",
   "avs_street_match"=>nil,
   "address"=>
    {"line2"=>nil,
     "line1"=>nil,
     "country_code"=>nil,
     "postal_code"=>nil,
     "city"=>nil,
     "state"=>nil},
   "number"=>"xxxxxxxxxxxx5100",
   "cvv_match"=>"yes",
   "avs_result"=>nil,
   "name"=>nil,
   "links"=>{"customer"=>nil},
   "created_at"=>"2014-03-05T23:26:39.277255Z",
   "brand"=>"MasterCard",
   "href"=>"/cards/CC4GOYzOKyWXBzJMVTs00aNk",
   "id"=>"CC4GOYzOKyWXBzJMVTs00aNk",
   "avs_postal_match"=>nil,
   "is_verified"=>true,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "expiration_year"=>2020,
   "expiration_month"=>12,
   "updated_at"=>"2014-03-05T23:26:39.277278Z",
   "meta"=>{},
   "cvv_result"=>"Match"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
