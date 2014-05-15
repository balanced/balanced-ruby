% if mode == 'definition':
Balanced::Reversal.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

reversal = Balanced::Reversal.fetch('/reversals/RV7BYCqyLOKwcWigapAoGWdr')

% elif mode == 'response':
#<Balanced::Reversal:0x007fa7d41277e8
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-05-15T00:43:48.266113Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV7BYCqyLOKwcWigapAoGWdr",
   "id"=>"RV7BYCqyLOKwcWigapAoGWdr",
   "links"=>{"credit"=>"CR7ushK6kWjPJYdh24QoM1A9", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RV689-626-0403",
   "updated_at"=>"2014-05-15T00:43:53.755588Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fa7d41258d0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d411f4a8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d411e968/lib/balanced/utils.rb:6 (lambda)>}>

% endif
