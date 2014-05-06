% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

reversal = Balanced::Reversal.fetch('/reversals/RV1zj7hidB6KZ7MxLESBXRJD')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fb60b214148
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-25T22:08:59.215557Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV1zj7hidB6KZ7MxLESBXRJD",
   "id"=>"RV1zj7hidB6KZ7MxLESBXRJD",
   "links"=>{"credit"=>"CR1ynmPUlJGbV9EMyqkowHJP", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV194-304-9795",
   "updated_at"=>"2014-04-25T22:09:03.300997Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fb60b211c68/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b20f5d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b20ea68/lib/balanced/utils.rb:6 (lambda)>}>

% endif
