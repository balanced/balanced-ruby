% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fbaa1b21f98
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-03-20T18:18:02.329221Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU7Ax7eQc4DJfYM0Wt3MqtHW",
    "id"=>"CU7Ax7eQc4DJfYM0Wt3MqtHW",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-03-20T18:18:03.060502Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fbaa1b23988/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fbaa1b1a090/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fbaa1b18740/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fbaa1b12138/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fbaa1b10180/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fbaa1b0b6d0/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fbaa1b096f0/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fbaa1b037a0/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fbaa1b01220/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fbaa1afb190/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fbaa1afa740/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fbaa1af83c8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fbaa1af8378
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-03-20T18:17:20.507364Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU6Puxkmu24SfVbY0oi1fPLw",
    "id"=>"CU6Puxkmu24SfVbY0oi1fPLw",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-03-20T18:17:21.725544Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fbaa1af20b8/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fbaa1aebc40/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fbaa1ae99b8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fbaa1ae3888/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fbaa1ae1678/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fbaa1ae0b38/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fbaa1ada878/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fbaa1ad86e0/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fbaa1ad2100/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fbaa1aa7ea0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fbaa1aa74a0/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fbaa1aa51c8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
