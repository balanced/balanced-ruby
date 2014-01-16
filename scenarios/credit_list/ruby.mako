% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x102051b50
  @attributes=
   {"meta"=>{},
    "currency"=>"USD",
    "links"=>
     {"order"=>nil,
      "destination"=>"BA7BTgSWZd7CDPnsBHwle62s",
      "customer"=>"CU7zEe4gULEuyvdraVEnKa1Q"},
    "appears_on_statement_as"=>"example.com",
    "status"=>"succeeded",
    "failure_reason_code"=>nil,
    "description"=>nil,
    "created_at"=>"2014-01-16T20:01:25.849511Z",
    "id"=>"CR7DsYbhMq51iZ1eOZK3aUia",
    "amount"=>5000,
    "failure_reason"=>nil,
    "transaction_number"=>"CR802-481-8273",
    "updated_at"=>"2014-01-16T20:01:26.745085Z",
    "href"=>"/credits/CR7DsYbhMq51iZ1eOZK3aUia"},
  @hyperlinks=
   {"order"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "reversals"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "destination"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
    "customer"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>]

% endif
