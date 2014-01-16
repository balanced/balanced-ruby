% if mode == 'definition':
Balanced::Verification.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

verification = Balanced::Verification.find('/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x101f8f2f8
 @attributes=
  {"meta"=>{},
   "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
   "created_at"=>"2014-01-16T20:00:34.173888Z",
   "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "attempts"=>1,
   "updated_at"=>"2014-01-16T20:00:37.657681Z",
   "attempts_remaining"=>2,
   "verification_status"=>"succeeded",
   "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "deposit_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
