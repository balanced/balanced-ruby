% if mode == 'definition':
Balanced::Settlement.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

Balanced::Settlement.all

% elif mode == 'response':
[#<Balanced::Settlement:0x007fcde389e988
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
     #<Proc:0x007fcde1170c58/lib/balanced/utils.rb:6 (lambda)>,
    "destination"=>
     #<Proc:0x007fcde1162d60/lib/balanced/resources/resource.rb:56 (lambda)>,
    "events"=>
     #<Proc:0x007fcde1152f00/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde1143500/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fcde1139960/lib/balanced/resources/resource.rb:56 (lambda)>}>]

% endif
