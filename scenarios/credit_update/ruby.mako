% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

credit = Balanced::Credit.fetch('/credits/CR3H2YtoAbpQCQ4Ey3RTLxxc')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x108779170
 @attributes=
  {"links"=>
    {"customer"=>"CU3E3HmlvpesH6rPOltSbgUK",
     "order"=>nil,
     "destination"=>"BA3FmIjnXmXxUX793Ah7qeLS"},
   "appears_on_statement_as"=>"example.com",
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "failure_reason"=>nil,
   "description"=>"New description for credit",
   "created_at"=>"2014-01-24T17:53:47.335281Z",
   "href"=>"/credits/CR3H2YtoAbpQCQ4Ey3RTLxxc",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"CR131-769-8772",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:53:51.651710Z",
   "id"=>"CR3H2YtoAbpQCQ4Ey3RTLxxc",
   "status"=>"succeeded"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
