% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA50LpPrCTB63Ecm0wEgdOQM')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007ff2bdb7ad60
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-03-06T19:22:35.961050Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD5qunOPeKdCnWXIg9EHyHge",
   "id"=>"WD5qunOPeKdCnWXIg9EHyHge",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA50LpPrCTB63Ecm0wEgdOQM"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W051-293-0823",
   "updated_at"=>"2014-03-06T19:22:36.418154Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007ff2bdb79f28/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007ff2bdb79578/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007ff2bdb736a0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007ff2bdb72ca0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007ff2bdb70e28/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007ff2bdb6aa28/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
