% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::Card.fetch('/cards/CC7JlMyXyZ8W3RBfE1SSlnrD')
card.hold(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fb60b3312d8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-25T22:00:27.337321Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-05-02T22:00:27.441254Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL4F8FdmMdyVxzE515FygGd",
   "id"=>"HL4F8FdmMdyVxzE515FygGd",
   "links"=>{"card"=>"CC7JlMyXyZ8W3RBfE1SSlnrD", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL750-788-2579",
   "updated_at"=>"2014-04-25T22:00:27.554476Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb60b32e010/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb60b32cf30/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b32a988/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b2f7498/lib/balanced/utils.rb:6 (lambda)>}>

% endif
