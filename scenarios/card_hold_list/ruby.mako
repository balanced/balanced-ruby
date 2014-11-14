% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fa0e19c5cc8
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-11-14T19:28:32.378595Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-11-21T19:28:32.843418Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL2F8jlnySjVKidwfXgBYZMY",
    "id"=>"HL2F8jlnySjVKidwfXgBYZMY",
    "links"=>{"card"=>"CC2E1bHjwNbYtzUcTAmH4kEM", "debit"=>nil, "order"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL0SV-779-FT23",
    "updated_at"=>"2014-11-14T19:28:32.934510Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa0e19cecb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa0e19d3e18@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e19e1900@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa0e19e9e20@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa0e19e71e8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fa0e19e7198
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-11-14T19:28:22.312439Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-11-21T19:28:23.250186Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL2tNsFDuFWcA4im3fXtW6u9",
    "id"=>"HL2tNsFDuFWcA4im3fXtW6u9",
    "links"=>
     {"card"=>"CCFH0xbYZSXk6xMr4uKMuYB",
      "debit"=>"WD2tP6uytbtqHPUN3e4npxrf",
      "order"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HLDM8-QLQ-PL5P",
    "updated_at"=>"2014-11-14T19:28:24.588219Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa0e19f1cb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa0e19f3c40@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fa0e19f73b8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa0e19fd150@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa0e19fc6d8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
