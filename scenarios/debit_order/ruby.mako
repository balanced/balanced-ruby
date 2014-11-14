% if mode == 'definition':
Balanced::Order.debit_from
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

order = Balanced::Order.fetch('/orders/OR2UWXCNY2nKlqIQhQhWN3Jm')
card = Balanced::Card.fetch('/cards/CC33DRVrekWpiHYjxSdVuqWc')
order.debit_from(
    :source => card,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa0e159be40
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*example.com",
   "created_at"=>"2014-11-14T19:36:02.103382Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD31QWGW79VW7eWFOWGojKne",
   "id"=>"WD31QWGW79VW7eWFOWGojKne",
   "links"=>
    {"card_hold"=>"HL31QjIYqmqFYNsoSXv5eOZO",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>"OR2UWXCNY2nKlqIQhQhWN3Jm",
     "source"=>"CC33DRVrekWpiHYjxSdVuqWc"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"WY1Y-EP5-1KQE",
   "updated_at"=>"2014-11-14T19:36:03.155383Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fa0e159a018@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e15996b8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e1598d58@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e159eeb0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e159d510@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa0e15a3690@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa0e15a1d18@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
