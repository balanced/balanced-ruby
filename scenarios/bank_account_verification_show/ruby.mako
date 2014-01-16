% if mode == 'definition':
Balanced::Verification.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

verification = Balanced::Verification.find('/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x10eb20d18
 @attributes=
  {"meta"=>{},
   "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
   "attempts"=>0,
   "updated_at"=>"2014-01-16T20:00:34.726463Z",
   "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "deposit_status"=>"succeeded",
   "attempts_remaining"=>3,
   "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "created_at"=>"2014-01-16T20:00:34.173888Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x000000010eb45bb8@./lib/balanced/resources/resource.rb:61>}>

% endif
