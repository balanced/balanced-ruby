% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card_hold = Balanced::CardHold.fetch('/card_holds/HL363Kap0nkbuV050V9DHpjf')

% elif mode == 'response':
#<Balanced::CardHold:0x007fa7d31ec468
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-05-15T00:39:39.384771Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-05-22T00:39:39.775030Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL363Kap0nkbuV050V9DHpjf",
   "id"=>"HL363Kap0nkbuV050V9DHpjf",
   "links"=>{"card"=>"CC35aRYQB8XnL0CxtKGFG7d3", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL376-078-9747",
   "updated_at"=>"2014-05-15T00:39:40.103344Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa7d33b6460/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa7d33b5768/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d33b2cc0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d33b08d0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
