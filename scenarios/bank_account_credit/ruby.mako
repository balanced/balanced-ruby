% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA4JCiiAb4alhWMlZSv9POAU')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x105fbe6d0
 @attributes=
  {"status"=>"succeeded",
   "appears_on_statement_as"=>"example.com",
   "links"=>
    {"order"=>nil,
     "customer"=>"CU4EeI9UPzRcOo2C3j1qFjQj",
     "destination"=>"BA4JCiiAb4alhWMlZSv9POAU"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:27:04.588054Z",
   "href"=>"/credits/CR5j27kuJPX6voI8aokUWsEG",
   "description"=>nil,
   "amount"=>5000,
   "transaction_number"=>"CR014-527-1811",
   "id"=>"CR5j27kuJPX6voI8aokUWsEG",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:27:04.959556Z",
   "meta"=>{},
   "failure_reason"=>nil},
 @hyperlinks=
  {"reversals"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "destination"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
