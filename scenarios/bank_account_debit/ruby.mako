% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3EMnkybAfEzVlbVquXFLEk')
bank_account.debit(
  :appears_on_statement_as => 'Statement text',
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x10db2bf20
 @attributes=
  {"transaction_number"=>"W506-983-6658",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "amount"=>5000,
   "links"=>
    {"source"=>"BA3EMnkybAfEzVlbVquXFLEk",
     "order"=>nil,
     "dispute"=>nil,
     "customer"=>nil},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-03-05T23:25:54.018666Z",
   "id"=>"WD3YFevpLojZZXSGnXtxLXYJ",
   "href"=>"/debits/WD3YFevpLojZZXSGnXtxLXYJ",
   "meta"=>{},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:25:54.401166Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"source"=>
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "dispute"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
