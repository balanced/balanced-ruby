% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card = Balanced::Card.fetch('/cards/CC5nCSU0yFp3qxR4p6UZST7y')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fefda37c658
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-03-06T19:22:51.758438Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-03-13T19:22:52.154430Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL5Ig892KbmJyDqED5fYsJ8m",
   "id"=>"HL5Ig892KbmJyDqED5fYsJ8m",
   "links"=>{"card"=>"CC5nCSU0yFp3qxR4p6UZST7y", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL671-938-5651",
   "updated_at"=>"2014-03-06T19:22:52.362482Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fefda386ae0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fefda386158/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fefda3841f0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fefda38e240/lib/balanced/utils.rb:6 (lambda)>}>

% endif
