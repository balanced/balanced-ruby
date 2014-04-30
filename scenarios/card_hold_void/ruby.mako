% if mode == 'definition':
Balanced::CardHold.unstore

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4F8FdmMdyVxzE515FygGd')
card_hold.unstore
% elif mode == 'response':
#<Balanced::CardHold:0x007fb60b1ffb30
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
   "updated_at"=>"2014-04-25T22:00:28.055030Z",
   "voided_at"=>"2014-04-25T22:00:28.055033Z"},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb60b1fcf48/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb60b11c380/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b11a300/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b1e19f0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
