% if mode == 'definition':
Balanced::Verification.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

verification = Balanced::Verification.fetch('/verifications/BZ30hb4BvSmoUMZiDdIMyz8K')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x1087bf378
 @attributes=
  {"links"=>{"bank_account"=>"BA2YEZjgBPUBzXgxXfjUeenw"},
   "meta"=>{},
   "deposit_status"=>"succeeded",
   "attempts"=>1,
   "created_at"=>"2014-01-24T17:53:09.290866Z",
   "href"=>"/verifications/BZ30hb4BvSmoUMZiDdIMyz8K",
   "attempts_remaining"=>2,
   "verification_status"=>"succeeded",
   "updated_at"=>"2014-01-24T17:53:12.552232Z",
   "id"=>"BZ30hb4BvSmoUMZiDdIMyz8K"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>}>

% endif
