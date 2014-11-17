% if mode == 'definition':
Balanced::CardHold.capture

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card_hold = Balanced::CardHold.fetch('/card_holds/HL2F8jlnySjVKidwfXgBYZMY')
debit = card_hold.capture(
  :appears_on_statement_as => 'ShowsUpOnStmt',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa0e18f3778
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
   "created_at"=>"2014-11-14T19:28:39.577643Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2Ne8ZvXt0FRckpr1JQ1eRq",
   "id"=>"WD2Ne8ZvXt0FRckpr1JQ1eRq",
   "links"=>
    {"card_hold"=>"HL2F8jlnySjVKidwfXgBYZMY",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC2E1bHjwNbYtzUcTAmH4kEM"},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"W8L2-II6-ANHK",
   "updated_at"=>"2014-11-14T19:28:44.346481Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fa0e18febc8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e11f8478@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e11f7640@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e11fa930@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e11f9238@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa0e125c310@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa0e125e340@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
