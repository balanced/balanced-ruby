% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

refund = Balanced::Refund.fetch('/refunds/RF3bjK4tYeF06CM5kT1Gzge')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fbaa586eb08
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-20T18:18:16.317927Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF3bjK4tYeF06CM5kT1Gzge",
   "id"=>"RF3bjK4tYeF06CM5kT1Gzge",
   "links"=>{"debit"=>"WD1doNnNgRQRLElx7ZHzsXS", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF289-950-2729",
   "updated_at"=>"2014-03-20T18:18:30.789641Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fbaa586cf88/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa586c588/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa41168c0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa4115ee8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
