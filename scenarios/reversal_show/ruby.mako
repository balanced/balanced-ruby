% if mode == 'definition':
Balanced::Reversal.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

reversal = Balanced::Reversal.fetch('/reversals/RV1g9oXOqXgXYezFUtmqg4S2')

% elif mode == 'response':
#<Balanced::Reversal:0x007fc09e0ceed0
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-01T16:39:26.285756Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV1g9oXOqXgXYezFUtmqg4S2",
   "id"=>"RV1g9oXOqXgXYezFUtmqg4S2",
   "links"=>{"credit"=>"CR1gIgujcGCCERRlL4KwljLG", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RV770-348-1487",
   "updated_at"=>"2014-04-01T16:39:26.770671Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fc09e0cd2d8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e0c7518/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09e0c6b68/lib/balanced/utils.rb:6 (lambda)>}>

% endif
