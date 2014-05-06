% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card_hold = Balanced::CardHold.fetch('/card_holds/HL7K6mNHtWSl33Whc0WDOJ81')

% elif mode == 'response':
#<Balanced::CardHold:0x007fb60b248100
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-25T22:00:20.558033Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-05-02T22:00:20.666972Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL7K6mNHtWSl33Whc0WDOJ81",
   "id"=>"HL7K6mNHtWSl33Whc0WDOJ81",
   "links"=>{"card"=>"CC7JlMyXyZ8W3RBfE1SSlnrD", "debit"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL046-527-6041",
   "updated_at"=>"2014-04-25T22:00:20.741093Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb60b9376f0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb60b936868/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b9327b8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b9268c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
