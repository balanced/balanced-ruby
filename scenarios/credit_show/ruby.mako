% if mode == 'definition':
Balanced::Credit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

credit = Balanced::Credit.fetch('/credits/CR7k9iyKSImqoPcvZyPNAcbm')
% elif mode == 'response':
#<Balanced::Credit:0x007fcde12109b0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-12-17T21:25:09.678154Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7k9iyKSImqoPcvZyPNAcbm",
   "id"=>"CR7k9iyKSImqoPcvZyPNAcbm",
   "links"=>
    {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
     "destination"=>"BA6FZjm2W2mK0DIQibA1sjHv",
     "order"=>nil},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"CRRWI-1PN-WA3D",
   "updated_at"=>"2014-12-17T21:25:10.040086Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fcde120ae20/lib/balanced/resources/resource.rb:56 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde1209480/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde12035a8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1202bd0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde1200c90/lib/balanced/utils.rb:6 (lambda)>}>

% endif
