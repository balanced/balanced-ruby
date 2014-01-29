% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

reversal = Balanced::Reversal.fetch('/reversals/RV42n8M9XZWna427oPDDi4RG')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fdc9e82cd50
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-01-27T22:58:21.214829Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV42n8M9XZWna427oPDDi4RG",
   "id"=>"RV42n8M9XZWna427oPDDi4RG",
   "links"=>{"credit"=>"CR40neytmVG2HDBp1opfF7sY", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV219-169-0008",
   "updated_at"=>"2014-01-27T22:58:27.354488Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fdc9e827440/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9e825078/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9e8245b0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
