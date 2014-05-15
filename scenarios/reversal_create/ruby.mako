% if mode == 'definition':
Balanced::Credit.reverse
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

reversal = Balanced::Credit.fetch('/credits/CR7ushK6kWjPJYdh24QoM1A9')
credit.reverse(
  :amount => 3000,
  :description => 'Reversal for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% elif mode == 'response':
#<Balanced::Reversal:0x007fa7d417fe70
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
    #<Proc:0x007fa7d417e1b0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d4177c48/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d4176af0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
