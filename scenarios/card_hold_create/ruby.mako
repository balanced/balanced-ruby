% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC35aRYQB8XnL0CxtKGFG7d3')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fa7d316d5a0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-05-15T00:40:11.970823Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-05-22T00:40:17.141216Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL3GI4qAmsr7ZdOzUgVuzmOF",
   "id"=>"HL3GI4qAmsr7ZdOzUgVuzmOF",
   "links"=>{"card"=>"CC35aRYQB8XnL0CxtKGFG7d3", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL069-470-2887",
   "updated_at"=>"2014-05-15T00:40:24.943265Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa7d3167a10/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa7d3166fe8/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d3164e28/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d3162a10/lib/balanced/utils.rb:6 (lambda)>}>

% endif
