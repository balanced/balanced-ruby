% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

refund = Balanced::Refund.find('/refunds/RF5zmaIdaDlwBNhvdRJOuo4E')
refund.description = 'update this description'
refund.meta = {
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3',
    'refund.reason' => 'user not happy with product'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x1087955c8
 @attributes=
  {"transaction_number"=>"RF565-601-6925",
   "created_at"=>"2014-01-16T19:23:44.462142Z",
   "status"=>"succeeded",
   "meta"=>
    {"user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3",
     "refund.reason"=>"user not happy with product"},
   "updated_at"=>"2014-01-16T19:23:48.962988Z",
   "id"=>"RF5zmaIdaDlwBNhvdRJOuo4E",
   "description"=>"update this description",
   "links"=>{"debit"=>"WD5v3l1cMnFLrXAvZC2hZTW0", "order"=>nil},
   "currency"=>"USD",
   "href"=>"/refunds/RF5zmaIdaDlwBNhvdRJOuo4E",
   "amount"=>3000},
 @hyperlinks=
  {"debit"=>#<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
