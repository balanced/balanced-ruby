% if mode == 'definition':
Balanced::Reversal.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

reversal = Balanced::Reversal.find('/reversals/RV5Hg7HQFavfRQX2wkCy1We2')

% elif mode == 'response':
#<Balanced::Reversal:0x108620bc0
 @attributes=
  {"transaction_number"=>"RV081-603-9675",
   "created_at"=>"2014-01-16T19:23:51.496582Z",
   "status"=>"succeeded",
   "meta"=>
    {"merchant.feedback"=>"positive",
     "fulfillment.item.condition"=>"OK",
     "user.refund_reason"=>"not happy with product"},
   "updated_at"=>"2014-01-16T19:23:52.186483Z",
   "id"=>"RV5Hg7HQFavfRQX2wkCy1We2",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"Reversal for Order #1111",
   "links"=>{"credit"=>"CR5G3zUnXs5iWezeavFVpLlR", "order"=>nil},
   "currency"=>"USD",
   "href"=>"/reversals/RV5Hg7HQFavfRQX2wkCy1We2",
   "amount"=>3000},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
