% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2YEZjgBPUBzXgxXfjUeenw')
bank_account.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x1086bc840
 @attributes=
  {"links"=>
    {"customer"=>nil, "source"=>"BA2YEZjgBPUBzXgxXfjUeenw", "order"=>nil},
   "appears_on_statement_as"=>"BAL*Statement text",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-24T17:53:19.664477Z",
   "href"=>"/debits/WD3bWlYlwiW4w0l7LNDaBYU2",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"W388-997-0082",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:53:20.167203Z",
   "id"=>"WD3bWlYlwiW4w0l7LNDaBYU2",
   "status"=>"succeeded"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
