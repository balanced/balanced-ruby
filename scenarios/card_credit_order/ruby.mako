% if mode == 'definition':
Balanced::Order.credit_to
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

order = Balanced::Order.fetch('/orders/OR2UWXCNY2nKlqIQhQhWN3Jm')
card = Balanced::Card.fetch('/cards/CC3IBNr3erYpVuuZDyWNFfet')
order.credit_to(
    :source => card,
    :amount => 5000
)

% elif mode == 'response':
#<Balanced::Credit:0x007fa0e1809c90
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-11-14T19:37:03.073567Z",
   "currency"=>"USD",
   "description"=>"Order #12341234",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR48hJDhdGMcI2vvJyzUbG8w",
   "id"=>"CR48hJDhdGMcI2vvJyzUbG8w",
   "links"=>
    {"customer"=>"CU40AyvBB6ny9u3oelCwyc3C",
     "destination"=>"CC3IBNr3erYpVuuZDyWNFfet",
     "order"=>"OR2UWXCNY2nKlqIQhQhWN3Jm"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR5YQ-F7A-Q1HF",
   "updated_at"=>"2014-11-14T19:37:04.037697Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa0e183c4b0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa0e183f9f8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1852ad0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e186b058@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e186fcc0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
