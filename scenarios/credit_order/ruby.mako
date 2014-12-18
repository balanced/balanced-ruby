% if mode == 'definition':
Balanced::Order.credit_to

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

order = Balanced::Order.fetch('/orders/OR6c6n11zKSFfjE6kGNKtsE8')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6FZjm2W2mK0DIQibA1sjHv/credits')
order.credit_to(
    :destination => bank_account,
    :amount => 5000
)
% elif mode == 'response':
#<Balanced::Credit:0x007fcde122fec8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-12-17T21:25:08.281495Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>
    "Marketplace TEST-MP60wtbv6zZrMK3XxOQ9r4xW has insufficient funds to cover a transfer of 5000.",
   "failure_reason_code"=>"insufficient-funds",
   "href"=>"/credits/CR7iAdaI3eSWUiwQ5Z6sozE9",
   "id"=>"CR7iAdaI3eSWUiwQ5Z6sozE9",
   "links"=>
    {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
     "destination"=>"BA6FZjm2W2mK0DIQibA1sjHv",
     "order"=>"OR6c6n11zKSFfjE6kGNKtsE8"},
   "meta"=>{},
   "status"=>"failed",
   "transaction_number"=>"CRF9L-4Z2-W9RN",
   "updated_at"=>"2014-12-17T21:25:08.310906Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fcde126bb30/lib/balanced/resources/resource.rb:56 (lambda)>,
   "destination"=>
    #<Proc:0x007fcde1269510/lib/balanced/resources/resource.rb:56 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1272d40/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1271238/lib/balanced/resources/resource.rb:56 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde122ace8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
