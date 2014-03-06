% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3EMnkybAfEzVlbVquXFLEk')
bank_account.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x105f164d0
 @attributes=
  {"status"=>"succeeded",
   "appears_on_statement_as"=>"BAL*Statement text",
   "links"=>
    {"source"=>"BA3EMnkybAfEzVlbVquXFLEk",
     "order"=>nil,
     "dispute"=>nil,
     "customer"=>nil},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:25:54.018666Z",
   "href"=>"/debits/WD3YFevpLojZZXSGnXtxLXYJ",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "amount"=>5000,
   "transaction_number"=>"W506-983-6658",
   "id"=>"WD3YFevpLojZZXSGnXtxLXYJ",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:25:54.401166Z",
   "meta"=>{},
   "failure_reason"=>nil},
 @hyperlinks=
  {"source"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "dispute"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
