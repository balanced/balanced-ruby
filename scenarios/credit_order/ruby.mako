% if mode == 'definition':
Balanced::Order.credit_to

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

order = Balanced::Order.fetch('/orders/OR3BXTqXewuSy1Cu3g6N2Sjj')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2gul8YMjFWnFk0fFHXwX6g/credits')
order.credit_to(
    :destination => bank_account,
    :amount => 5000
)
% elif mode == 'response':
#<Balanced::Credit:0x007fa0e1420520
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-11-14T19:29:28.199462Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR3FU6XvFswsndaX7IxscSkg",
   "id"=>"CR3FU6XvFswsndaX7IxscSkg",
   "links"=>
    {"customer"=>"CU2718cI8PkMdFyPjboZLZfn",
     "destination"=>"BA2gul8YMjFWnFk0fFHXwX6g",
     "order"=>"OR3BXTqXewuSy1Cu3g6N2Sjj"},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"CRFQJ-LXX-56OB",
   "updated_at"=>"2014-11-14T19:29:31.106470Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa0e14260b0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa0e142bbf0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1429440@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e142f228@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e1433bc0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
