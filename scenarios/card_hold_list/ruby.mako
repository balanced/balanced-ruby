% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fa7d314e920
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-05-15T00:39:39.384771Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-05-22T00:39:39.775030Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL363Kap0nkbuV050V9DHpjf",
    "id"=>"HL363Kap0nkbuV050V9DHpjf",
    "links"=>{"card"=>"CC35aRYQB8XnL0CxtKGFG7d3", "debit"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL376-078-9747",
    "updated_at"=>"2014-05-15T00:39:40.103344Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa7d314c9e0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa7d314e358/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d3149c40/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa7d3147af8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fa7d3147aa8
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-05-15T00:38:09.797065Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-05-22T00:38:10.721627Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL1tiQ6q1MB2h7L4RjznIibT",
    "id"=>"HL1tiQ6q1MB2h7L4RjznIibT",
    "links"=>
     {"card"=>"CC1rSjzxK321d4qkS81yg4zf", "debit"=>"WD1tD4DVB1YM8LnsmmZ5GEHL"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL330-466-8498",
    "updated_at"=>"2014-05-15T00:38:16.149117Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fa7d3145ac8/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fa7d3147d28/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d3141ba8/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa7d313f9e8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
