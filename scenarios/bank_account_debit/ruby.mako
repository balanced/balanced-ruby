% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA3XWM0MHGvNnTyZFpBA9tlK/debits')
bank_account.debit(
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard',
  :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x10868d108
 @attributes=
  {"transaction_number"=>"W332-110-9413",
   "created_at"=>"2014-01-16T19:22:28.813867Z",
   "appears_on_statement_as"=>"BAL*Statement text",
   "status"=>"succeeded",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:22:29.253378Z",
   "id"=>"WD4cjdoqr5JC1hnSgT7s2g6H",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "links"=>
    {"order"=>nil, "customer"=>nil, "source"=>"BA3XWM0MHGvNnTyZFpBA9tlK"},
   "currency"=>"USD",
   "href"=>"/debits/WD4cjdoqr5JC1hnSgT7s2g6H",
   "amount"=>5000},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>

% endif
