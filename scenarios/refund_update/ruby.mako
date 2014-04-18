% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

refund = Balanced::Refund.fetch('/refunds/RF1mYWVCnVu5NkDAl47rDgMx')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fb793afcd08
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-17T22:39:47.779017Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF1mYWVCnVu5NkDAl47rDgMx",
   "id"=>"RF1mYWVCnVu5NkDAl47rDgMx",
   "links"=>
    {"debit"=>"WD19cDwPJMMJj6UWn4YI2bGZ", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF938-498-8864",
   "updated_at"=>"2014-04-17T22:40:17.834532Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fb793af70d8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb793af6728/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793af47e8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793aefd60/lib/balanced/utils.rb:6 (lambda)>}>

% endif
