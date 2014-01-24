% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3YBUkHZNRVugUmhBGE3A9G')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x10874efb0
 @attributes=
  {"links"=>
    {"customer"=>"CU3Ttx347VFA9lYT8dBOkwcu",
     "order"=>nil,
     "destination"=>"BA3YBUkHZNRVugUmhBGE3A9G"},
   "appears_on_statement_as"=>"example.com",
   "meta"=>{},
   "failure_reason"=>nil,
   "description"=>nil,
   "created_at"=>"2014-01-24T17:54:27.467618Z",
   "href"=>"/credits/CR4qcbNcps5TuZFDDcV1XZdu",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"CR799-880-4514",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:54:27.908717Z",
   "id"=>"CR4qcbNcps5TuZFDDcV1XZdu",
   "status"=>"succeeded"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
