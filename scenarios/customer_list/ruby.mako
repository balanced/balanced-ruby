% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fb60a8a4158
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-25T22:00:47.619359Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CUrtoxuYO4XmXZi6NzXKBLL",
    "id"=>"CUrtoxuYO4XmXZi6NzXKBLL",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-25T22:00:47.810824Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fb60b268068/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fb60b2655c0/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fb60b2566b0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb60b253398/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b2500d0/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fb60b24f248/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fb60b24c4d0/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fb60b249ca8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb60b2472c8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb60b9366b0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb60b935b48/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fb60b931bd8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fb60b931b88
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-25T22:00:10.346757Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU7yCmXG2RxyyIkcHG3SIMUF",
    "id"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-25T22:00:10.525354Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fb60b925220/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fb60b9226d8/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fb60b91cad0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb60b9127b0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b8da018/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fb60b8d93e8/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fb60a890248/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fb60b2398a8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb60b2373a0/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb60b2335e8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb60b232170/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fb60b226618/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
