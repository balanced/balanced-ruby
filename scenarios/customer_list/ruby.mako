% if mode == 'definition':
Balanced::Customer.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

customers = Balanced::Customer.all
% elif mode == 'response':
[#<Balanced::Customer:0x007fb79320fee8
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-17T22:39:35.399913Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CU194sQ52I1idiwicbg0mOOB",
    "id"=>"CU194sQ52I1idiwicbg0mOOB",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-17T22:39:35.564842Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fb7931fe288/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fb7931ee1a8/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fb7931d5630/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb7931c65e0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793193c08/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fb793191c50/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fb7931a93f0/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fb793170e38/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb7930fdde8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb793168530/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb7931634e0/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fb79315a868/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Customer:0x007fb793153d60
  @attributes=
   {"address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>"48120",
      "state"=>nil},
    "business_name"=>nil,
    "created_at"=>"2014-04-17T22:38:56.202253Z",
    "dob_month"=>7,
    "dob_year"=>1963,
    "ein"=>nil,
    "email"=>nil,
    "href"=>"/customers/CUeXNjpejPooRtSnJLc6SRD",
    "id"=>"CUeXNjpejPooRtSnJLc6SRD",
    "links"=>{"destination"=>nil, "source"=>nil},
    "merchant_status"=>"underwritten",
    "meta"=>{},
    "name"=>"Henry Ford",
    "phone"=>nil,
    "ssn_last4"=>nil,
    "updated_at"=>"2014-04-17T22:38:56.455726Z"},
  @hyperlinks=
   {"bank_accounts"=>
     #<Proc:0x007fb793148fc8/lib/balanced/utils.rb:6 (lambda)>,
    "card_holds"=>
     #<Proc:0x007fb793130a90/lib/balanced/utils.rb:6 (lambda)>,
    "cards"=>
     #<Proc:0x007fb7931233b8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb793119228/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793110d58/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fb7930ef608/lib/balanced/utils.rb:6 (lambda)>,
    "external_accounts"=>
     #<Proc:0x007fb7930e46e0/lib/balanced/utils.rb:6 (lambda)>,
    "orders"=>
     #<Proc:0x007fb7930d5960/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fb7930c45e8/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fb7930b4b98/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fb7930a97c0/lib/balanced/utils.rb:6 (lambda)>,
    "transactions"=>
     #<Proc:0x007fb7930a0a08/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
