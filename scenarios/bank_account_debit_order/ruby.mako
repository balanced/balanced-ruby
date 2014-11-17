% if mode == 'definition':
Balanced::Order.debit_from
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

order = Balanced::Order.fetch('/orders/OR5sl2RJVnbwEf45nq5eATdz')
bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA17zYxBNrmg9isvicjz9Ae4')
order.debit_from(
    :source => bank_account,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa0e08b4f38
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*example.com",
   "created_at"=>"2014-11-14T19:32:12.424415Z",
   "currency"=>"USD",
   "description"=>"New description for order",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD6EB5Jvfr4PTxUJB3HFTGVn",
   "id"=>"WD6EB5Jvfr4PTxUJB3HFTGVn",
   "links"=>
    {"card_hold"=>nil,
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>"OR5sl2RJVnbwEf45nq5eATdz",
     "source"=>"BA17zYxBNrmg9isvicjz9Ae4"},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"W5OI-0K3-GLCQ",
   "updated_at"=>"2014-11-14T19:32:12.989360Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fa0e08b4088@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e08b36d8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e08bf8c0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e08bd8e0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e2037570@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa0e2035540@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa0e2033808@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
