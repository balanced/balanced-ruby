% if mode == 'definition':
Balanced::Settlement.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

settlement = Balanced::Settlement.fetch('/settlements/STGy49Zg44ROAgkEbZP9T2w')

% elif mode == 'response':
#<Balanced::Settlement:0x007fcde08a9570
 @attributes=
  {"amount"=>1000,
   "appears_on_statement_as"=>"BAL*ThingsCo",
   "created_at"=>"2014-12-17T21:26:13.225998Z",
   "currency"=>"USD",
   "description"=>"Payout A",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/settlements/STGy49Zg44ROAgkEbZP9T2w",
   "id"=>"STGy49Zg44ROAgkEbZP9T2w",
   "links"=>
    {"destination"=>"BA6FZjm2W2mK0DIQibA1sjHv",
     "source"=>"AT68yF0GzJByks2OxU6oNjPy"},
   "meta"=>{"group"=>"alpha"},
   "status"=>"pending",
   "transaction_number"=>"SC3TJ-2PT-D0F1",
   "updated_at"=>"2014-12-17T21:26:13.566850Z"},
 @hyperlinks=
  {"credits"=>
    #<Proc:0x007fcde089a3b8/lib/balanced/utils.rb:6 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde0882a88/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde084b5b0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde0843bd0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde0840f48/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
