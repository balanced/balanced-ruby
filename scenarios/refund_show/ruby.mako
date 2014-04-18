% if mode == 'definition':
Balanced::Refund.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

refund = Balanced::Refund.fetch('/refunds/RF1mYWVCnVu5NkDAl47rDgMx')

% elif mode == 'response':
#<Balanced::Refund:0x007fb793b1f538
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-17T22:39:47.779017Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RF1mYWVCnVu5NkDAl47rDgMx",
   "id"=>"RF1mYWVCnVu5NkDAl47rDgMx",
   "links"=>
    {"debit"=>"WD19cDwPJMMJj6UWn4YI2bGZ", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RF938-498-8864",
   "updated_at"=>"2014-04-17T22:39:48.442287Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fb793b1d940/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb793b1cf90/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb793b170b8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb793b166b8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
