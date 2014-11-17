% if mode == 'definition':
Balanced::Card.credit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::Card.fetch('/cards/CC3iCCIHprJu5HPyP7vmE92B')
card.credit(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Credit:0x007fa0e1022a90
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-11-14T19:29:19.110285Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR3vFNFFCyqipPjs5t4eaIVO",
   "id"=>"CR3vFNFFCyqipPjs5t4eaIVO",
   "links"=>
    {"customer"=>"CU2718cI8PkMdFyPjboZLZfn",
     "destination"=>"CC3iCCIHprJu5HPyP7vmE92B",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR6R4-4OF-RNZ7",
   "updated_at"=>"2014-11-14T19:29:19.965523Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa0e10a3be0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa0e10b28e8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e10b6b50@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e10bdfb8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e10d46a0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
