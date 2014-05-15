% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

refund = Balanced::Refund.fetch('/refunds/RF635DEq9cKcoNDr0ljY4dU1')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fa7d41d66f8
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-05-15T00:42:22.128891Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF635DEq9cKcoNDr0ljY4dU1",
   "id"=>"RF635DEq9cKcoNDr0ljY4dU1",
   "links"=>
    {"debit"=>"WD5z5CvSR6PFx0GgUFn0icKx", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF710-400-6883",
   "updated_at"=>"2014-05-15T00:43:36.139004Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fa7d41d4740/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d41cfdd0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d41cddf0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d41cd3c8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
