% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x10201dd50
  @attributes=
   {"meta"=>
     {"merchant.feedback"=>"positive",
      "fulfillment.item.condition"=>"OK",
      "user.refund_reason"=>"not happy with product"},
    "currency"=>"USD",
    "links"=>{"order"=>nil, "debit"=>"WDyN9045Drn2VaNeJT3MokD"},
    "status"=>"succeeded",
    "description"=>"Refund for Order #1111",
    "created_at"=>"2014-01-16T20:02:08.557881Z",
    "id"=>"RFCsiN9NYuDAbA72wRdpiUL",
    "amount"=>3000,
    "transaction_number"=>"RF566-748-1243",
    "updated_at"=>"2014-01-16T20:02:10.555336Z",
    "href"=>"/refunds/RFCsiN9NYuDAbA72wRdpiUL"},
  @hyperlinks=
   {"order"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>]

% endif
