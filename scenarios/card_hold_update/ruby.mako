% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card_hold = Balanced::CardHold.fetch('/card_holds/HL3iJ3toXGtGHwOyVMD9aT71')
card_hold.description = 'update this description'
card_hold.meta = {
    'meaningful.key' => 'some.value',
    'holding.for' => 'user1'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x10875e5a0
 @attributes=
  {"links"=>{"card"=>"CC3hYX4uMMrNuO0lbYMY0PP9", "debit"=>nil},
   "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
   "failure_reason"=>nil,
   "description"=>"update this description",
   "created_at"=>"2014-01-24T17:53:25.689100Z",
   "href"=>"/card_holds/HL3iJ3toXGtGHwOyVMD9aT71",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"HL997-114-4181",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:53:29.251912Z",
   "id"=>"HL3iJ3toXGtGHwOyVMD9aT71",
   "expires_at"=>"2014-01-31T17:53:25.829067Z"},
 @hyperlinks=
  {"card"=>#<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "debits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
