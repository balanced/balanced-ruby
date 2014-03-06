% if mode == 'definition':
Balanced::Credit.reverse
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

reversal = Balanced::Credit.fetch('/credits/CR5j27kuJPX6voI8aokUWsEG')
credit.reverse(
  :amount => 3000,
  :description => 'Reversal for Order #1111',
  :meta => {
    'merchant.feedback' => 'positive',
    'user.refund_reason' => 'not happy with product',
    'fulfillment.item.condition' => 'OK'
  }
)

% elif mode == 'response':
#<Balanced::Reversal:0x106781188
 @attributes=
  {"status"=>"succeeded",
   "links"=>{"order"=>nil, "credit"=>"CR5j27kuJPX6voI8aokUWsEG"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:27:05.479351Z",
   "href"=>"/reversals/RV5h1LgxTlH1OtHAZEfQbvbH",
   "description"=>"Reversal for Order #1111",
   "amount"=>3000,
   "transaction_number"=>"RV541-000-1984",
   "id"=>"RV5h1LgxTlH1OtHAZEfQbvbH",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:27:06.287586Z",
   "meta"=>
    {"merchant.feedback"=>"positive",
     "user.refund_reason"=>"not happy with product",
     "fulfillment.item.condition"=>"OK"},
   "failure_reason"=>nil},
 @hyperlinks=
  {"events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "credit"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
