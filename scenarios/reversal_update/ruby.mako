% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

reversal = Balanced::Reversal.fetch('/reversals/RVNN4yEYvtbFh9ZTBkfS7t4')
reversal.description = 'update this description'
reversal.meta = {
    'user.satisfaction' => '6',
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x1083f3550
 @attributes=
  {"created_at"=>"2014-01-16T20:02:18.661532Z",
   "meta"=>
    {"user.satisfaction"=>"6",
     "refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone"},
   "failure_reason"=>nil,
   "description"=>"update this description",
   "transaction_number"=>"RV929-157-6227",
   "status"=>"succeeded",
   "links"=>{"order"=>nil, "credit"=>"CRKWhB8EqgH0vnlu2zoFiWA"},
   "failure_reason_code"=>nil,
   "id"=>"RVNN4yEYvtbFh9ZTBkfS7t4",
   "href"=>"/reversals/RVNN4yEYvtbFh9ZTBkfS7t4",
   "amount"=>3000,
   "updated_at"=>"2014-01-16T20:02:25.080560Z",
   "currency"=>"USD"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "credit"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
