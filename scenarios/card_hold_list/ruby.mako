% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x108840568
  @attributes=
   {"links"=>{"card"=>"CC3hYX4uMMrNuO0lbYMY0PP9", "debit"=>nil},
    "meta"=>{},
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "created_at"=>"2014-01-24T17:53:25.689100Z",
    "href"=>"/card_holds/HL3iJ3toXGtGHwOyVMD9aT71",
    "failure_reason_code"=>nil,
    "amount"=>5000,
    "transaction_number"=>"HL997-114-4181",
    "currency"=>"USD",
    "updated_at"=>"2014-01-24T17:53:25.947213Z",
    "id"=>"HL3iJ3toXGtGHwOyVMD9aT71",
    "expires_at"=>"2014-01-31T17:53:25.829067Z"},
  @hyperlinks=
   {"card"=>#<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
    "debits"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "events"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>,
 #<Balanced::CardHold:0x108822f90
  @attributes=
   {"links"=>
     {"card"=>"CC2M0ypYw0wP8B71Y6x3B0D0", "debit"=>"WD2P2E02ymh7Hwt8b5AvQf4c"},
    "meta"=>{},
    "failure_reason"=>nil,
    "description"=>nil,
    "created_at"=>"2014-01-24T17:52:57.389512Z",
    "href"=>"/card_holds/HL2MTrBIB9ATWPYRy9OIJGAo",
    "failure_reason_code"=>nil,
    "amount"=>10000000,
    "transaction_number"=>"HL127-235-6240",
    "currency"=>"USD",
    "updated_at"=>"2014-01-24T17:53:02.935658Z",
    "id"=>"HL2MTrBIB9ATWPYRy9OIJGAo",
    "expires_at"=>"2014-01-31T17:53:00.111194Z"},
  @hyperlinks=
   {"card"=>#<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
    "debits"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
    "events"=>
     #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>]

% endif
