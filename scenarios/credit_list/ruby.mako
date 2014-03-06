% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x10e2336d8
  @attributes=
   {"transaction_number"=>"CR858-193-7792",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"example.com",
    "amount"=>5000,
    "links"=>
     {"destination"=>"BA4osUR5dW1HQkqoxl65lfNe",
      "order"=>nil,
      "customer"=>"CU4lcDzIlpDxgcuzHkzC4QHS"},
    "failure_reason"=>nil,
    "description"=>nil,
    "created_at"=>"2014-03-05T23:26:24.160132Z",
    "id"=>"CR4wyLukORa0TXhCYtjZrfw5",
    "href"=>"/credits/CR4wyLukORa0TXhCYtjZrfw5",
    "meta"=>{},
    "currency"=>"USD",
    "updated_at"=>"2014-03-05T23:26:24.536046Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"reversals"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "destination"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "order"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>}>]

% endif
