% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA4JCiiAb4alhWMlZSv9POAU')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x10dbd2e60
 @attributes=
  {"transaction_number"=>"CR014-527-1811",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"example.com",
   "amount"=>5000,
   "links"=>
    {"destination"=>"BA4JCiiAb4alhWMlZSv9POAU",
     "order"=>nil,
     "customer"=>"CU4EeI9UPzRcOo2C3j1qFjQj"},
   "failure_reason"=>nil,
   "description"=>nil,
   "created_at"=>"2014-03-05T23:27:04.588054Z",
   "id"=>"CR5j27kuJPX6voI8aokUWsEG",
   "href"=>"/credits/CR5j27kuJPX6voI8aokUWsEG",
   "meta"=>{},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:27:04.959556Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"reversals"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>}>

% endif
