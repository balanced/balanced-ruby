% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6ARjzdSjbnDWFK6ykjuGhy')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fbaa49e06b8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-03-20T18:17:24.956715Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD6UuiVgaFmYHVwmOGESMIYU",
   "id"=>"WD6UuiVgaFmYHVwmOGESMIYU",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA6ARjzdSjbnDWFK6ykjuGhy"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W179-463-4763",
   "updated_at"=>"2014-03-20T18:17:25.573197Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa580fb08/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fbaa580f180/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa580d308/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa580c930/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fbaa5816a98/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fbaa58150f8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
