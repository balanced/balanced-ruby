% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

credit = Balanced::Credit.fetch('/credits/CR7DsYbhMq51iZ1eOZK3aUia')
credit.description = 'New description for credit'
credit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x10863dfb8
 @attributes=
  {"created_at"=>"2014-01-16T20:01:25.849511Z",
   "meta"=>{"facebook.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "failure_reason"=>nil,
   "description"=>"New description for credit",
   "transaction_number"=>"CR802-481-8273",
   "status"=>"succeeded",
   "links"=>
    {"customer"=>"CU7zEe4gULEuyvdraVEnKa1Q",
     "destination"=>"BA7BTgSWZd7CDPnsBHwle62s",
     "order"=>nil},
   "failure_reason_code"=>nil,
   "id"=>"CR7DsYbhMq51iZ1eOZK3aUia",
   "href"=>"/credits/CR7DsYbhMq51iZ1eOZK3aUia",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T20:01:31.878974Z",
   "currency"=>"USD",
   "appears_on_statement_as"=>"example.com"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
   "reversals"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
