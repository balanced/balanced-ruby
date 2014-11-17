% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fa0e14a2700
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-11-14T19:29:39.728907Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU3SSJgvA5Z69kt05MusbPeE",
    "id"=>"CU3SSJgvA5Z69kt05MusbPeE",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-11-14T19:29:40.703739Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fa0e14a8290@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa0e14a63f0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa0e14a4550@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa0e14aa680@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e14a87e0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa0e14afe28@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa0e14adfb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa0e14b4108@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa0e14b2268@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa0e14b8398@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa0e14b64f8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa0e14b5b70@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa0e14bbcf0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fa0e14bbca0
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-11-14T19:28:02.058549Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU2718cI8PkMdFyPjboZLZfn",
    "id"=>"CU2718cI8PkMdFyPjboZLZfn",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-11-14T19:28:04.120089Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fa0e14b9860@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fa0e14bf9b8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fa0e14bdb40@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa0e14c3c98@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e14c1e20@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fa0e14c1498@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "disputes"=>
     #<Proc:0x007fa0e14c7640@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fa0e14c57c8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fa0e14cb920@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa0e14c9aa8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa0e14cfc28@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa0e14cf2a0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fa0e14cd450@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
