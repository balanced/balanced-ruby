% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA7JTM3gXtLHz4juPfeQ4oqz')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fc09e19b4d0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-01T16:38:19.277125Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4mtIGhe2CyLLBfPFRe2EU",
   "id"=>"WD4mtIGhe2CyLLBfPFRe2EU",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA7JTM3gXtLHz4juPfeQ4oqz"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W040-464-5266",
   "updated_at"=>"2014-04-01T16:38:19.761913Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fc09e19a990/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fc09e19a008/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e198230/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09e1a37e8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09e1a1a38/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09e1a0098/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
