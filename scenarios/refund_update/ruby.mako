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
#<Balanced::Refund:0x101f9b850
 @attributes=
  {"meta"=>
    {"user.refund.count"=>"3",
     "user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product"},
   "currency"=>"USD",
   "links"=>{"order"=>nil, "debit"=>"WDyN9045Drn2VaNeJT3MokD"},
   "status"=>"succeeded",
   "description"=>"update this description",
   "created_at"=>"2014-01-16T20:02:08.557881Z",
   "id"=>"RFCsiN9NYuDAbA72wRdpiUL",
   "amount"=>3000,
   "transaction_number"=>"RF566-748-1243",
   "updated_at"=>"2014-01-16T20:02:14.585534Z",
   "href"=>"/refunds/RFCsiN9NYuDAbA72wRdpiUL"},
 @hyperlinks=
  {"order"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
