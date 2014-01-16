% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

debit = Balanced::Debit.find('/debits/WD7uMejCQlx7A4PN6447H0LK')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x10ec0cb50
 @attributes=
  {"meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "links"=>
    {"order"=>nil, "source"=>"CC7nvFZYLkB5xPZDrgwcdIO2", "customer"=>nil},
   "amount"=>5000,
   "status"=>"succeeded",
   "updated_at"=>"2014-01-16T20:01:50.545171Z",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "id"=>"WD7uMejCQlx7A4PN6447H0LK",
   "currency"=>"USD",
   "transaction_number"=>"W197-518-2707",
   "href"=>"/debits/WD7uMejCQlx7A4PN6447H0LK",
   "description"=>"New description for debit",
   "created_at"=>"2014-01-16T20:01:18.123328Z",
   "failure_reason"=>nil},
 @hyperlinks=
  {"order"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>

% endif
