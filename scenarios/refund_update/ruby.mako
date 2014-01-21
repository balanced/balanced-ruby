% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

refund = Balanced::Refund.fetch('/refunds/RFCsiN9NYuDAbA72wRdpiUL')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.refund.count' => '3',
    'user.notes' => 'very polite on the phone'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x108650d20
 @attributes=
  {"created_at"=>"2014-01-16T20:02:08.557881Z",
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.refund.count"=>"3",
     "user.notes"=>"very polite on the phone"},
   "description"=>"update this description",
   "transaction_number"=>"RF566-748-1243",
   "status"=>"succeeded",
   "links"=>{"debit"=>"WDyN9045Drn2VaNeJT3MokD", "order"=>nil},
   "id"=>"RFCsiN9NYuDAbA72wRdpiUL",
   "href"=>"/refunds/RFCsiN9NYuDAbA72wRdpiUL",
   "amount"=>3000,
   "updated_at"=>"2014-01-16T20:02:14.585534Z",
   "currency"=>"USD"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debit"=>#<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
