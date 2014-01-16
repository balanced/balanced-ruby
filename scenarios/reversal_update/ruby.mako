% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

reversal = Balanced::Reversal.find('/reversals/RV5Hg7HQFavfRQX2wkCy1We2')
reversal.description = 'update this description'
reversal.meta = {
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6',
    'refund.reason' => 'user not happy with product'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x108549dc8
 @attributes=
  {"transaction_number"=>"RV081-603-9675",
   "created_at"=>"2014-01-16T19:23:51.496582Z",
   "status"=>"succeeded",
   "meta"=>
    {"user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6",
     "refund.reason"=>"user not happy with product"},
   "updated_at"=>"2014-01-16T19:23:56.055102Z",
   "id"=>"RV5Hg7HQFavfRQX2wkCy1We2",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"update this description",
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
