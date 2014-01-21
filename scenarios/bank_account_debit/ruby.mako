% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8/debits')
bank_account.debit(
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000,
  :appears_on_statement_as => 'Statement text'
)

% elif mode == 'response':
#<Balanced::Debit:0x108551ed8
 @attributes=
  {"created_at"=>"2014-01-16T20:00:45.636668Z",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "transaction_number"=>"W781-655-7472",
   "status"=>"succeeded",
   "links"=>
    {"customer"=>nil, "source"=>"BA6FDSSC6O5Ip8el1dDjfMz8", "order"=>nil},
   "failure_reason_code"=>nil,
   "id"=>"WD6Uf7pYeUQP3KKtVwU7P6Qw",
   "href"=>"/debits/WD6Uf7pYeUQP3KKtVwU7P6Qw",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:00:46.334601Z",
   "currency"=>"USD",
   "appears_on_statement_as"=>"BAL*Statement text"},
 @hyperlinks=
  {"refunds"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
