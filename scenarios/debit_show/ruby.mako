% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

debit = Balanced::Debit.fetch('/debits/WD3nVmuDYvCWCox0YECGc6b3')

% elif mode == 'response':
#<Balanced::Debit:0x007fa0e15b1470
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-11-14T19:29:12.233424Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD3nVmuDYvCWCox0YECGc6b3",
   "id"=>"WD3nVmuDYvCWCox0YECGc6b3",
   "links"=>
    {"card_hold"=>"HL3nTP3DHaaeZZmAKdkOCBcp",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC33DRVrekWpiHYjxSdVuqWc"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"WOSU-O30-BSKO",
   "updated_at"=>"2014-11-14T19:29:17.852649Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fa0e15b7640@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e15b6ce0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e15b6380@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e15b4508@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e15bbb28@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa0e15b9cb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa0e15bc320@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
