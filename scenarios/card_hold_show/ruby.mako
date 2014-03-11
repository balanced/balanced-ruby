% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card_hold = Balanced::CardHold.fetch('/card_holds/HL5wAfv8JaMsEn9idXrLZZZT')

% elif mode == 'response':
#<Balanced::CardHold:0x007fa4e40e28e8
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
    #<Proc:0x007fa4e40e67e0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa4e40e49b8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa4e40ffdd0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa4e40fc9c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
