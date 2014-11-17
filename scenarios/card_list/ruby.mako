% if mode == 'definition':
Balanced::Card.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

cards = Balanced::Card.all
% elif mode == 'response':
[#<Balanced::Card:0x007fa0e1b627c0
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
    "bank_name"=>"BANK OF HAWAII",
    "brand"=>"MasterCard",
    "can_credit"=>false,
    "can_debit"=>true,
    "category"=>"other",
    "created_at"=>"2014-11-14T19:28:54.173121Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC33DRVrekWpiHYjxSdVuqWc",
    "id"=>"CC33DRVrekWpiHYjxSdVuqWc",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "type"=>"credit",
    "updated_at"=>"2014-11-14T19:28:54.173123Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa0e08c4fa0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa0e08c3fb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e1b73660@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa0e1b704d8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Card:0x007fa0e1b70488
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
    "bank_name"=>"BANK OF HAWAII",
    "brand"=>"MasterCard",
    "can_credit"=>false,
    "can_debit"=>true,
    "category"=>"other",
    "created_at"=>"2014-11-14T19:28:31.389783Z",
    "cvv"=>"xxx",
    "cvv_match"=>"yes",
    "cvv_result"=>"Match",
    "expiration_month"=>12,
    "expiration_year"=>2020,
    "fingerprint"=>
     "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
    "href"=>"/cards/CC2E1bHjwNbYtzUcTAmH4kEM",
    "id"=>"CC2E1bHjwNbYtzUcTAmH4kEM",
    "is_verified"=>true,
    "links"=>{"customer"=>nil},
    "meta"=>{},
    "name"=>nil,
    "number"=>"xxxxxxxxxxxx5100",
    "type"=>"credit",
    "updated_at"=>"2014-11-14T19:28:31.389784Z"},
  @hyperlinks=
   {"card_holds"=>
     #<Proc:0x007fa0e1b7d4f8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa0e1b7c918@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e1304a60@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa0e133ff98@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
