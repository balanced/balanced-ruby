% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

credit = Balanced::Credit.fetch('/credits/CR4yt4sdkTWI1t3HVS16mNAV')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fa6d32c8ae0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-04-25T20:10:02.398021Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR4yt4sdkTWI1t3HVS16mNAV",
   "id"=>"CR4yt4sdkTWI1t3HVS16mNAV",
   "links"=>
    {"customer"=>"CU3VYCUIfwngJsidJWdGw2W5",
     "destination"=>"BA3Y63fK5STwlhKNMkE3Utmd",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR883-913-0274",
   "updated_at"=>"2014-04-25T20:10:07.895933Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa6d32b9d10/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa6d32b16d8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa6d32aa680/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa6d32a9348/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa6d3293188/lib/balanced/utils.rb:6 (lambda)>}>

% endif
