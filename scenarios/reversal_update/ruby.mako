% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

reversal = Balanced::Reversal.fetch('/reversals/RV6OCxJ1UhkG84is6H9PHjkZ')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fa4e49991f8
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-06T19:23:55.596399Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV6OCxJ1UhkG84is6H9PHjkZ",
   "id"=>"RV6OCxJ1UhkG84is6H9PHjkZ",
   "links"=>{"credit"=>"CR6NpuEtezCdLTYngDrSEODv", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV542-861-3670",
   "updated_at"=>"2014-03-06T19:24:00.271458Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fa4e49932a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa4e49900f8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa4e293b398/lib/balanced/utils.rb:6 (lambda)>}>

% endif
