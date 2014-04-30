% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card_hold = Balanced::CardHold.fetch('/card_holds/HL7K6mNHtWSl33Whc0WDOJ81')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fb60b235a00
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-25T22:00:20.558033Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-05-02T22:00:20.666972Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL7K6mNHtWSl33Whc0WDOJ81",
   "id"=>"HL7K6mNHtWSl33Whc0WDOJ81",
   "links"=>{"card"=>"CC7JlMyXyZ8W3RBfE1SSlnrD", "debit"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL046-527-6041",
   "updated_at"=>"2014-04-25T22:00:24.531626Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fb60b22c5b8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fb60b22ba78/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fb60b225268/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b21d018/lib/balanced/utils.rb:6 (lambda)>}>

% endif
