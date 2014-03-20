% if mode == 'definition':
Balanced::Debit.refund
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

debit = Balanced::Debit.fetch('/debits/WD1doNnNgRQRLElx7ZHzsXS')
debit.refund(
  :amount => 3000,
  :description => 'Refund for Order #1111',
  :meta => {
    'fulfillment.item.condition' => 'OK',
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product'
  }
)

% elif mode == 'response':
#<Balanced::Refund:0x007fbaa583d7b0
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-20T18:18:16.317927Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RF3bjK4tYeF06CM5kT1Gzge",
   "id"=>"RF3bjK4tYeF06CM5kT1Gzge",
   "links"=>{"debit"=>"WD1doNnNgRQRLElx7ZHzsXS", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RF289-950-2729",
   "updated_at"=>"2014-03-20T18:18:17.196608Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fbaa5847cb0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa5847328/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa5845550/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa5844b78/lib/balanced/utils.rb:6 (lambda)>}>

% endif
