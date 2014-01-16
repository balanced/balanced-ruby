% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8/debits')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x10e9e9a80
 @attributes=
  {"meta"=>{},
   "links"=>
    {"order"=>nil, "source"=>"BA6FDSSC6O5Ip8el1dDjfMz8", "customer"=>nil},
   "amount"=>5000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:00:46.334601Z",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "id"=>"WD6Uf7pYeUQP3KKtVwU7P6Qw",
   "currency"=>"USD",
   "transaction_number"=>"W781-655-7472",
   "href"=>"/debits/WD6Uf7pYeUQP3KKtVwU7P6Qw",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:00:45.636668Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>

% endif
