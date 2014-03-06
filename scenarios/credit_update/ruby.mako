% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

credit = Balanced::Credit.fetch('/credits/CR4wyLukORa0TXhCYtjZrfw5')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x1068b7778
 @attributes=
  {"status"=>"succeeded",
   "appears_on_statement_as"=>"example.com",
   "links"=>
    {"order"=>nil,
     "customer"=>"CU4lcDzIlpDxgcuzHkzC4QHS",
     "destination"=>"BA4osUR5dW1HQkqoxl65lfNe"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:26:24.160132Z",
   "href"=>"/credits/CR4wyLukORa0TXhCYtjZrfw5",
   "description"=>"New description for credit",
   "amount"=>5000,
   "transaction_number"=>"CR858-193-7792",
   "id"=>"CR4wyLukORa0TXhCYtjZrfw5",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:26:29.272502Z",
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "failure_reason"=>nil},
 @hyperlinks=
  {"reversals"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "destination"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
