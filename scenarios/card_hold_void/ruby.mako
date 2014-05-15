% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card_hold = Balanced::CardHold.fetch('/card_holds/HL3GI4qAmsr7ZdOzUgVuzmOF')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fa7d3370230
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
   "updated_at"=>"2014-05-15T00:40:27.177705Z",
   "voided_at"=>"2014-05-15T00:40:27.177708Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa7d336a448/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa7d3369ac0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa7d3363a30/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d3361a28/lib/balanced/utils.rb:6 (lambda)>}>

% endif
