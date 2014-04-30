% if mode == 'definition':
Balanced::Credit.reverse
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

reversal = Balanced::Credit.fetch('/credits/CR1ynmPUlJGbV9EMyqkowHJP')
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
#<Balanced::Reversal:0x007fb60a8b5278
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-25T22:08:59.215557Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV1zj7hidB6KZ7MxLESBXRJD",
   "id"=>"RV1zj7hidB6KZ7MxLESBXRJD",
   "links"=>{"credit"=>"CR1ynmPUlJGbV9EMyqkowHJP", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RV194-304-9795",
   "updated_at"=>"2014-04-25T22:08:59.561099Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fb60a8b1fd8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb60a8afaf8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60a8af120/lib/balanced/utils.rb:6 (lambda)>}>

% endif
