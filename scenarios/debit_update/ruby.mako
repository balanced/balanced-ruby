% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

debit = Balanced::Debit.find('/debits/WD7uMejCQlx7A4PN6447H0LK')
debit.description = 'New description for debit'
debit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x1020bfc18
 @attributes=
  {"meta"=>{"facebook.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "currency"=>"USD",
   "links"=>
    {"source"=>"CC7nvFZYLkB5xPZDrgwcdIO2", "order"=>nil, "customer"=>nil},
   "appears_on_statement_as"=>"BAL*Statement text",
   "status"=>"succeeded",
   "failure_reason_code"=>nil,
   "description"=>"New description for debit",
   "created_at"=>"2014-01-16T20:01:18.123328Z",
   "id"=>"WD7uMejCQlx7A4PN6447H0LK",
   "amount"=>5000,
   "failure_reason"=>nil,
   "transaction_number"=>"W197-518-2707",
   "updated_at"=>"2014-01-16T20:01:50.545171Z",
   "href"=>"/debits/WD7uMejCQlx7A4PN6447H0LK"},
 @hyperlinks=
  {"source"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
   "order"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
