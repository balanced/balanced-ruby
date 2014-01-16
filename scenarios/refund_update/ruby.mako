% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

refund = Balanced::Refund.find('/refunds/RFCsiN9NYuDAbA72wRdpiUL')
refund.description = 'update this description'
refund.meta = {
    'user.refund.count' => '3',
    'user.notes' => 'very polite on the phone',
    'refund.reason' => 'user not happy with product'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x10eadba60
 @attributes=
  {"meta"=>
    {"user.refund.count"=>"3",
     "user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product"},
   "links"=>{"debit"=>"WDyN9045Drn2VaNeJT3MokD", "order"=>nil},
   "amount"=>3000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:02:14.585534Z",
   "id"=>"RFCsiN9NYuDAbA72wRdpiUL",
   "currency"=>"USD",
   "transaction_number"=>"RF566-748-1243",
   "href"=>"/refunds/RFCsiN9NYuDAbA72wRdpiUL",
   "description"=>"update this description",
   "created_at"=>"2014-01-16T20:02:08.557881Z"},
 @hyperlinks=
  {"debit"=>#<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>

% endif
