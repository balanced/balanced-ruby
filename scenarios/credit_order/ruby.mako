% if mode == 'definition':
Balanced::Order.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

order = Balanced::Order.fetch('/orders/OR1s2WQKp0shLH9Qb0LiUfEJ')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1BnM6LmT9DLV4bZDIjUmHD')
order.credit_to(
    :source => card,
    :amount => '5000'
)
% elif mode == 'response':
#<Balanced::Credit:0x007fb60b3964d0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-30T04:52:18.377513Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR1C6rJsYzhOhCtxZkheExEh",
   "id"=>"CR1C6rJsYzhOhCtxZkheExEh",
   "links"=>
    {"customer"=>"CU1rvfqiY1AtduFioI0rWJvL",
     "destination"=>"BA1BnM6LmT9DLV4bZDIjUmHD",
     "order"=>"OR1s2WQKp0shLH9Qb0LiUfEJ"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR715-275-6943",
   "updated_at"=>"2014-04-30T04:52:18.594666Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b394090/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fb60b392358/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fb60b38f108/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60b38c700/lib/balanced/resources/resource.rb:60 (lambda)>,
   "reversals"=>
    #<Proc:0x007fb60b389f00/lib/balanced/utils.rb:6 (lambda)>}>

% endif
