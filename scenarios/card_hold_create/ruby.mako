% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card = Balanced::Card.fetch('/cards/CC3hYX4uMMrNuO0lbYMY0PP9')
card.hold(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)
% elif mode == 'response':
#<Balanced::CardHold:0x1088acad8
 @attributes=
  {"links"=>{"card"=>"CC3hYX4uMMrNuO0lbYMY0PP9", "debit"=>nil},
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-24T17:53:32.311011Z",
   "href"=>"/card_holds/HL3qaOBRFhWgKwSPz7bCetSn",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"HL122-317-9482",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:53:32.588812Z",
   "id"=>"HL3qaOBRFhWgKwSPz7bCetSn",
   "expires_at"=>"2014-01-31T17:53:32.494443Z"},
 @hyperlinks=
  {"card"=>#<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "debits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
