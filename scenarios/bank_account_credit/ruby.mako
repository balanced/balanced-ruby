% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2gul8YMjFWnFk0fFHXwX6g')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x007fa0e1b2c300
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-11-14T19:31:16.741168Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR5DQV6PdifnxDMmethpLIGN",
   "id"=>"CR5DQV6PdifnxDMmethpLIGN",
   "links"=>
    {"customer"=>"CU2718cI8PkMdFyPjboZLZfn",
     "destination"=>"BA2gul8YMjFWnFk0fFHXwX6g",
     "order"=>nil},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"CRZ2P-NW9-NTU2",
   "updated_at"=>"2014-11-14T19:31:17.234505Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa0e1b2a230@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa0e1b304c8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1b2e650@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e1b2dca0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e1b33e20@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
