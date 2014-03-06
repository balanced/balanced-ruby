% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

credit = Balanced::Credit.fetch('/credits/CR4wyLukORa0TXhCYtjZrfw5')
credit.description = 'New description for credit'
credit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x10e4bfca8
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
   "description"=>"New description for credit",
   "created_at"=>"2014-03-05T23:26:24.160132Z",
   "id"=>"CR4wyLukORa0TXhCYtjZrfw5",
   "href"=>"/credits/CR4wyLukORa0TXhCYtjZrfw5",
   "meta"=>{"facebook.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:29.272502Z",
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
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>}>

% endif
