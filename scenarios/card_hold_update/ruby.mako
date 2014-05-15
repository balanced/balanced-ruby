% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card_hold = Balanced::CardHold.fetch('/card_holds/HL363Kap0nkbuV050V9DHpjf')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fa7d3391ca0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-05-15T00:39:39.384771Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-05-22T00:39:39.775030Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL363Kap0nkbuV050V9DHpjf",
   "id"=>"HL363Kap0nkbuV050V9DHpjf",
   "links"=>{"card"=>"CC35aRYQB8XnL0CxtKGFG7d3", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL376-078-9747",
   "updated_at"=>"2014-05-15T00:39:44.237965Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa7d338f6a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa7d338e690/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d338b788/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d3389690/lib/balanced/utils.rb:6 (lambda)>}>

% endif
