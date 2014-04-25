% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3IhKG3bIN22cLHbaOIGtHb')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa93ebddb68
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T20:09:33.925749Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD42s4BBkPXvzXTxyo7CLfFj",
   "id"=>"WD42s4BBkPXvzXTxyo7CLfFj",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA3IhKG3bIN22cLHbaOIGtHb"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W212-186-3238",
   "updated_at"=>"2014-04-25T20:09:34.551675Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa93ebdd028/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa93ebdc6a0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93ebe67e0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa93ebe5e08/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa93ebeff70/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa93ebee5d0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
