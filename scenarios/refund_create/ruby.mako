% if mode == 'definition':
Balanced::Debit.refund
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

debit = Balanced::Debit.find('/debits/WD5v3l1cMnFLrXAvZC2hZTW0')
debit.refund(
  :description => 'Refund for Order #1111',
  :meta => {
    'merchant.feedback' => 'positive',
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product'
  }
)

% elif mode == 'response':
#<Balanced::Refund:0x10886f0c0
 @attributes=
  {"transaction_number"=>"RF565-601-6925",
   "created_at"=>"2014-01-16T19:23:44.462142Z",
   "status"=>"succeeded",
   "meta"=>
    {"merchant.feedback"=>"positive",
     "fulfillment.item.condition"=>"OK",
     "user.refund_reason"=>"not happy with product"},
   "updated_at"=>"2014-01-16T19:23:45.133531Z",
   "id"=>"RF5zmaIdaDlwBNhvdRJOuo4E",
   "description"=>"Refund for Order #1111",
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
