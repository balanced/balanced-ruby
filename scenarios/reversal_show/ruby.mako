% if mode == 'definition':
Balanced::Reversal.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

reversal = Balanced::Reversal.fetch('/reversals/RV5Fc1aJCtoFdUKBVdErGJed')

% elif mode == 'response':
#<Balanced::Reversal:0x007fa0e1386c40
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-11-14T19:31:17.835281Z",
   "currency"=>"USD",
   "description"=>"Reversal for Order #1111",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV5Fc1aJCtoFdUKBVdErGJed",
   "id"=>"RV5Fc1aJCtoFdUKBVdErGJed",
   "links"=>{"credit"=>"CR5DQV6PdifnxDMmethpLIGN", "order"=>nil},
   "meta"=>
    {"fulfillment.item.condition"=>"OK",
     "merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product"},
   "status"=>"pending",
   "transaction_number"=>"RVEXH-K3A-EK3X",
   "updated_at"=>"2014-11-14T19:31:18.227544Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fa0e1383fe0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1381a10@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e1380f98@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
