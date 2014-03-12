% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fa4e48dedf8
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-03-06T19:22:44.421804Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-03-13T19:22:44.661981Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL5wAfv8JaMsEn9idXrLZZZT",
    "id"=>"HL5wAfv8JaMsEn9idXrLZZZT",
    "links"=>{"card"=>"CC5nCSU0yFp3qxR4p6UZST7y", "debit"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL116-606-6128",
    "updated_at"=>"2014-03-06T19:22:44.816617Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa4e48d04d8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa4e48d2e68/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e48d12c0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa4e48e6d00/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fa4e48e6cb0
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-03-06T19:22:16.137074Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-03-13T19:22:16.821934Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL50LRASJbs8Kbcwqpu2TFdD",
    "id"=>"HL50LRASJbs8Kbcwqpu2TFdD",
    "links"=>
     {"card"=>"CC4SdMF0rukpL3XdVvpqoC4m", "debit"=>"WD50VxLKoVBNdkbovF4D56xX"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL974-747-7939",
    "updated_at"=>"2014-03-06T19:22:17.708358Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa4e48d4c90/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa4e48d53c0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e48edf60/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa4e48f7510/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
