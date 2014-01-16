% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

reversal = Balanced::Reversal.find('/reversals/RVNN4yEYvtbFh9ZTBkfS7t4')
reversal.description = 'update this description'
reversal.meta = {
    'user.satisfaction' => '6',
    'user.notes' => 'very polite on the phone',
    'refund.reason' => 'user not happy with product'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x10e83fab8
 @attributes=
  {"meta"=>
    {"user.satisfaction"=>"6",
     "user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product"},
   "links"=>{"credit"=>"CRKWhB8EqgH0vnlu2zoFiWA", "order"=>nil},
   "amount"=>3000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:02:25.080560Z",
   "failure_reason_code"=>nil,
   "id"=>"RVNN4yEYvtbFh9ZTBkfS7t4",
   "currency"=>"USD",
   "transaction_number"=>"RV929-157-6227",
   "href"=>"/reversals/RVNN4yEYvtbFh9ZTBkfS7t4",
   "description"=>"update this description",
   "created_at"=>"2014-01-16T20:02:18.661532Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
