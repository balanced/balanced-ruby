% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007fa93b558930
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"example.com",
    "created_at"=>"2014-04-25T20:10:02.398021Z",
    "currency"=>"USD",
    "description"=>nil,
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/credits/CR4yt4sdkTWI1t3HVS16mNAV",
    "id"=>"CR4yt4sdkTWI1t3HVS16mNAV",
    "links"=>
     {"customer"=>"CU3VYCUIfwngJsidJWdGw2W5",
      "destination"=>"BA3Y63fK5STwlhKNMkE3Utmd",
      "order"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"CR883-913-0274",
    "updated_at"=>"2014-04-25T20:10:03.049785Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa93b54b370/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007fa93b540448/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fa93b5287a8/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa93b523190/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa93b51b030/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
