% if mode == 'definition':
Balanced::Credit.reverse
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

reversal = Balanced::Credit.fetch('/credits/CR40neytmVG2HDBp1opfF7sY')
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
#<Balanced::Reversal:0x007fdc9b8048d0
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-01-27T22:58:21.214829Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV42n8M9XZWna427oPDDi4RG",
   "id"=>"RV42n8M9XZWna427oPDDi4RG",
   "links"=>{"credit"=>"CR40neytmVG2HDBp1opfF7sY", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RV219-169-0008",
   "updated_at"=>"2014-01-27T22:58:22.190749Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fdc9b190b20/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9b188380/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9b1818c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
