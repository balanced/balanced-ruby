% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

refund = Balanced::Refund.fetch('/refunds/RF6HsnqferSuES9VZEWrthG2')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fefd9886708
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-06T19:23:46.176138Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF6HsnqferSuES9VZEWrthG2",
   "id"=>"RF6HsnqferSuES9VZEWrthG2",
   "links"=>
    {"debit"=>"WD6BKYhbRzlRhfKSE1DcpqS5", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF348-549-7723",
   "updated_at"=>"2014-03-06T19:23:53.123358Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fefd9884bb0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fefd9884228/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fefd988e3b8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fefd988d9e0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
