% if mode == 'definition':
Balanced::Reversal.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

reversals = Balanced::Reversal.all
% elif mode == 'response':
[#<Balanced::Reversal:0x10e36b398
  @attributes=
   {"transaction_number"=>"RV541-000-1984",
    "failure_reason_code"=>nil,
    "amount"=>3000,
    "links"=>{"credit"=>"CR5j27kuJPX6voI8aokUWsEG", "order"=>nil},
    "failure_reason"=>nil,
    "description"=>"Reversal for Order #1111",
    "created_at"=>"2014-03-05T23:27:05.479351Z",
    "id"=>"RV5h1LgxTlH1OtHAZEfQbvbH",
    "href"=>"/reversals/RV5h1LgxTlH1OtHAZEfQbvbH",
    "meta"=>
     {"merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product",
      "fulfillment.item.condition"=>"OK"},
    "currency"=>"USD",
    "updated_at"=>"2014-03-05T23:27:06.287586Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"credit"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "order"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>]

% endif
