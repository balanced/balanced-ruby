% if mode == 'definition':
Balanced::Customer.accounts

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

customer = Balanced::Customer.fetch('/customers/CU68iUpvvUwpRpuuBL3u9Slq')
customer.accounts
% elif mode == 'response':
[#<Balanced::Account:0x007fcde1318a10
  @attributes=
   {"balance"=>0,
    "can_credit"=>true,
    "can_debit"=>true,
    "created_at"=>"2014-12-17T21:24:04.257700Z",
    "currency"=>"USD",
    "href"=>"/accounts/AT68yF0GzJByks2OxU6oNjPy",
    "id"=>"AT68yF0GzJByks2OxU6oNjPy",
    "links"=>{"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq"},
    "meta"=>{},
    "type"=>"payable",
    "updated_at"=>"2014-12-17T21:24:04.257702Z"},
  @hyperlinks=
   {"credits"=>
     #<Proc:0x007fcde13229c0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde1321020/lib/balanced/resources/resource.rb:56 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde132b188/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde1329310/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde1333428/lib/balanced/utils.rb:6 (lambda)>,
    "settlements"=>
     #<Proc:0x007fcde13315b0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
