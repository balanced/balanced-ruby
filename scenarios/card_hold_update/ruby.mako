% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card_hold = Balanced::CardHold.fetch('/card_holds/HL5wAfv8JaMsEn9idXrLZZZT')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007ff2bdb5a600
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-03-06T19:22:44.421804Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-03-13T19:22:44.661981Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL5wAfv8JaMsEn9idXrLZZZT",
   "id"=>"HL5wAfv8JaMsEn9idXrLZZZT",
   "links"=>{"card"=>"CC5nCSU0yFp3qxR4p6UZST7y", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL116-606-6128",
   "updated_at"=>"2014-03-06T19:22:48.496101Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007ff2bdb58058/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007ff2bdb53e90/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007ff2bdb51820/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007ff2bdb4bb00/lib/balanced/utils.rb:6 (lambda)>}>

% endif
