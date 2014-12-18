% if mode == 'definition':
Balanced::Order.debit_from
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

order = Balanced::Order.fetch('/orders/OR6c6n11zKSFfjE6kGNKtsE8')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6m4zboF7ocvKbkhjszP5NS')
order.debit_from(
    :source => bank_account,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x007fcde1984598
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*example.com",
   "created_at"=>"2014-12-17T21:24:36.080525Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD6InqCi6JBE8YNoH0co1Wla",
   "id"=>"WD6InqCi6JBE8YNoH0co1Wla",
   "links"=>
    {"card_hold"=>nil,
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>"OR6c6n11zKSFfjE6kGNKtsE8",
     "source"=>"BA6m4zboF7ocvKbkhjszP5NS"},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"WC7M-IMJ-2SSI",
   "updated_at"=>"2014-12-17T21:24:36.328328Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fcde198fa10/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde198f088/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fcde198e700/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde198c888/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde1996e78/lib/balanced/resources/resource.rb:56 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde1995028/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fcde199f668/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
