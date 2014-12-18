% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

credit = Balanced::Credit.fetch('/credits/CR7k9iyKSImqoPcvZyPNAcbm')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fcde11e9298
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-12-17T21:25:09.678154Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7k9iyKSImqoPcvZyPNAcbm",
   "id"=>"CR7k9iyKSImqoPcvZyPNAcbm",
   "links"=>
    {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
     "destination"=>"BA6FZjm2W2mK0DIQibA1sjHv",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"pending",
   "transaction_number"=>"CRRWI-1PN-WA3D",
   "updated_at"=>"2014-12-17T21:25:14.629393Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fcde11e3780/lib/balanced/resources/resource.rb:56 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde11e1db8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde125be60/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde125b410/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde1259598/lib/balanced/utils.rb:6 (lambda)>}>

% endif
