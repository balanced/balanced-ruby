% if mode == 'definition':
Balanced::Reversal.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

reversal = Balanced::Reversal.fetch('/reversals/RV6OCxJ1UhkG84is6H9PHjkZ')

% elif mode == 'response':
#<Balanced::Reversal:0x007ff2bd8c1858
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-06T19:23:55.596399Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV6OCxJ1UhkG84is6H9PHjkZ",
   "id"=>"RV6OCxJ1UhkG84is6H9PHjkZ",
   "links"=>{"credit"=>"CR6NpuEtezCdLTYngDrSEODv", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RV542-861-3670",
   "updated_at"=>"2014-03-06T19:23:56.470321Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007ff2bd8b9fb8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007ff2bd8b07b0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007ff2bd8aa428/lib/balanced/utils.rb:6 (lambda)>}>

% endif
