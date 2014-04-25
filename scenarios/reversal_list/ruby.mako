% if mode == 'definition':
Balanced::Reversal.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

reversals = Balanced::Reversal.all
% elif mode == 'response':
[#<Balanced::Reversal:0x007fa6d2137308
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-04-25T20:18:55.008280Z",
    "currency"=>"USD",
    "description"=>"Reversal for Order #1111",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/reversals/RV6qrEOTouLeIJuPu4s73Ra1",
    "id"=>"RV6qrEOTouLeIJuPu4s73Ra1",
    "links"=>{"credit"=>"CR6nBcaGvGc4dtflEB1bjKBP", "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"succeeded",
    "transaction_number"=>"RV296-883-6069",
    "updated_at"=>"2014-04-25T20:18:57.393905Z"},
  @hyperlinks=
   {"credit"=>
     #<Proc:0x007fa6d21357b0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fa6d212f220/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa6d212e7f8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
