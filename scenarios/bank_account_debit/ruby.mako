% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1D3vL3LjasB0kewMqRGI0S')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fdc9c014188
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-01-27T22:56:28.702119Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD1ZRRAZnFTryFdFaq7ijcPE",
   "id"=>"WD1ZRRAZnFTryFdFaq7ijcPE",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA1D3vL3LjasB0kewMqRGI0S"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W081-463-7557",
   "updated_at"=>"2014-01-27T22:56:29.235927Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fdc9c0267c0/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9c025488/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9c02ce90/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9c035798/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9c0457b0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9c04cec0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
