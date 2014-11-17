% if mode == 'definition':
Balanced::Card.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::Card.new(
  :cvv => '123',
  :expiration_month => '12',
  :expiration_year => '3000',
  :number => '6500000000000002'
).save

% elif mode == 'response':
#<Balanced::Card:0x007fa0e1b3b9b8
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
   "bank_name"=>"BANK OF AMERICA",
   "brand"=>"Discover",
   "can_credit"=>true,
   "can_debit"=>true,
   "category"=>"other",
   "created_at"=>"2014-11-14T19:30:14.786383Z",
   "cvv"=>"xxx",
   "cvv_match"=>"yes",
   "cvv_result"=>"Match",
   "expiration_month"=>12,
   "expiration_year"=>3000,
   "fingerprint"=>
    "3c667a62653e187f29b5781eeb0703f26e99558080de0c0f9490b5f9c4ac2871",
   "href"=>"/cards/CC4wj9Lfvka6iodY7jzyqSHe",
   "id"=>"CC4wj9Lfvka6iodY7jzyqSHe",
   "is_verified"=>true,
   "links"=>{"customer"=>nil},
   "meta"=>{},
   "name"=>nil,
   "number"=>"xxxxxxxxxxxx0002",
   "type"=>"debit",
   "updated_at"=>"2014-11-14T19:30:14.786385Z"},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x007fa0e1b2f5c8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa0e1b20b40@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e1b1cb58@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e1b10330@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "disputes"=>
    #<Proc:0x007fa0e1b05ef8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
