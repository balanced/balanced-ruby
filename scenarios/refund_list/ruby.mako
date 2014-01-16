% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x10eb60800
  @attributes=
   {"meta"=>
     {"user.refund_reason"=>"not happy with product",
      "fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive"},
    "links"=>{"debit"=>"WDyN9045Drn2VaNeJT3MokD", "order"=>nil},
    "amount"=>3000,
    "status"=>"succeeded",
    "updated_at"=>"2014-01-16T20:02:10.555336Z",
    "id"=>"RFCsiN9NYuDAbA72wRdpiUL",
    "currency"=>"USD",
    "transaction_number"=>"RF566-748-1243",
    "href"=>"/refunds/RFCsiN9NYuDAbA72wRdpiUL",
    "description"=>"Refund for Order #1111",
    "created_at"=>"2014-01-16T20:02:08.557881Z"},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>,
    "order"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>]

% endif
