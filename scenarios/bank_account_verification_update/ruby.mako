% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

verification = Balanced::Verification.fetch('/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007feca99d3c38
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-01-16T20:00:34.173888Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
   "meta"=>{},
   "updated_at"=>"2014-01-16T20:00:37.657681Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007feca99d1fc8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
