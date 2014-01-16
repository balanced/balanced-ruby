% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8/debits')
bank_account.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x101e848e0
 @attributes=
  {"meta"=>{},
   "currency"=>"USD",
   "links"=>
    {"source"=>"BA6FDSSC6O5Ip8el1dDjfMz8", "order"=>nil, "customer"=>nil},
   "appears_on_statement_as"=>"BAL*Statement text",
   "status"=>"succeeded",
   "failure_reason_code"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-01-16T20:00:45.636668Z",
   "id"=>"WD6Uf7pYeUQP3KKtVwU7P6Qw",
   "amount"=>5000,
   "failure_reason"=>nil,
   "transaction_number"=>"W781-655-7472",
   "updated_at"=>"2014-01-16T20:00:46.334601Z",
   "href"=>"/debits/WD6Uf7pYeUQP3KKtVwU7P6Qw"},
 @hyperlinks=
  {"source"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
