% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fb60a8d8e08
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
     #<Proc:0x007fb60a8d6a68/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fb60a8d6040/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60a8d3a98/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb60a8d16d0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fb60a8d1680
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-04-25T21:59:52.712600Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-05-02T21:59:53.051962Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL7eMCPEx1LmcMsc7Dkb34IR",
    "id"=>"HL7eMCPEx1LmcMsc7Dkb34IR",
    "links"=>
     {"card"=>"CC7e42SmOKbG8SzMa3KAdqEF", "debit"=>"WD7eNI7TPCmhZk68mAjgeATP"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL352-623-5508",
    "updated_at"=>"2014-04-25T21:59:53.466186Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fb60a8ca3a8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fb60a8c3be8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60a8c08f8/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fb60a8bddd8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
