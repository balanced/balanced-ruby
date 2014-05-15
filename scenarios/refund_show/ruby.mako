% if mode == 'definition':
Balanced::Refund.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

refund = Balanced::Refund.fetch('/refunds/RF635DEq9cKcoNDr0ljY4dU1')

% elif mode == 'response':
#<Balanced::Refund:0x007fa7d41ffbe8
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-05-15T00:42:22.128891Z",
   "currency"=>"USD",
   "description"=>"Refund for Order #1111",
   "href"=>"/refunds/RF635DEq9cKcoNDr0ljY4dU1",
   "id"=>"RF635DEq9cKcoNDr0ljY4dU1",
   "links"=>
    {"debit"=>"WD5z5CvSR6PFx0GgUFn0icKx", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"succeeded",
   "transaction_number"=>"RF710-400-6883",
   "updated_at"=>"2014-05-15T00:42:32.373753Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fa7d41fcdf8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d41f7df8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d41f5968/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d41f4ef0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
