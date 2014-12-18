% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA17zYxBNrmg9isvicjz9Ae4')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fb1e9473a68
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-11-14T19:28:20.531858Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2rNbc5IxoDIyiumypsUMtv",
   "id"=>"WD2rNbc5IxoDIyiumypsUMtv",
   "links"=>
    {"card_hold"=>nil,
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA17zYxBNrmg9isvicjz9Ae4"},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"WSVJ-8FD-G2UK",
   "updated_at"=>"2014-11-14T19:28:20.985200Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fb1e9472f28@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fb1e94725a0@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb1e9471c18@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb1e947bd58@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb1e947b380@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb1e9479530@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb1e9483b48@/Users/ben/.rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
