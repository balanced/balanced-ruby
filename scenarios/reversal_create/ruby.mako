% if mode == 'definition':
Balanced::Credit.reverse
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

reversal = Balanced::Credit.fetch('/credits/CRl8vsIfwYjpcYnDk0K0ILQ')
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
#<Balanced::Reversal:0x007fbaa5077030
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-20T18:18:33.232301Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RVmcR4FZ5HLHkFEg38wsf9B",
   "id"=>"RVmcR4FZ5HLHkFEg38wsf9B",
   "links"=>{"credit"=>"CRl8vsIfwYjpcYnDk0K0ILQ", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RV397-485-2419",
   "updated_at"=>"2014-03-20T18:18:33.900827Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fbaa50755a0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa5087778/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa5086dc8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
