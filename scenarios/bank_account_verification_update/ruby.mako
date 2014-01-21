% if mode == 'definition':
Balanced::Verification.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

verification = Balanced::Verification.fetch('/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x1086572d8
 @attributes=
  {"created_at"=>"2014-01-16T20:00:34.173888Z",
   "attempts_remaining"=>2,
   "verification_status"=>"succeeded",
   "meta"=>{},
   "deposit_status"=>"succeeded",
   "attempts"=>1,
   "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
   "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "updated_at"=>"2014-01-16T20:00:37.657681Z"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>}>

% endif
