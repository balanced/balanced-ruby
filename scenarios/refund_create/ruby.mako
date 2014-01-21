% if mode == 'definition':
Balanced::Debit.refund
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

debit = Balanced::Debit.fetch('/debits/WDyN9045Drn2VaNeJT3MokD')
debit.refund(
  :amount => 3000,
  :description => 'Refund for Order #1111',
  :meta => {
    'merchant.feedback' => 'positive',
    'fulfillment.item.condition' => 'OK',
    'user.refund_reason' => 'not happy with product'
  }
)

% elif mode == 'response':
#<Balanced::Refund:0x10872e238
 @attributes=
  {"created_at"=>"2014-01-16T20:02:08.557881Z",
   "meta"=>
    {"merchant.feedback"=>"positive",
     "fulfillment.item.condition"=>"OK",
     "user.refund_reason"=>"not happy with product"},
   "description"=>"Refund for Order #1111",
   "transaction_number"=>"RF566-748-1243",
   "status"=>"succeeded",
   "links"=>{"debit"=>"WDyN9045Drn2VaNeJT3MokD", "order"=>nil},
   "id"=>"RFCsiN9NYuDAbA72wRdpiUL",
   "href"=>"/refunds/RFCsiN9NYuDAbA72wRdpiUL",
   "amount"=>3000,
   "updated_at"=>"2014-01-16T20:02:10.555336Z",
   "currency"=>"USD"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debit"=>#<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
