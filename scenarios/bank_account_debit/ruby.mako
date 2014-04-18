% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BAcRGk40xmI8meZpNLB3oYp')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb7959b2888
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-17T22:38:59.275346Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDure3wqINhVaYzrW0oclQd",
   "id"=>"WDure3wqINhVaYzrW0oclQd",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BAcRGk40xmI8meZpNLB3oYp"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W805-408-0649",
   "updated_at"=>"2014-04-17T22:38:59.553856Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb7959b1d48/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb7959b13c0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb7959bb5a0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb7959babc8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb7959b8e18/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb7959c34d0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
