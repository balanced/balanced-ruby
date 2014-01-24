% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

verification = Balanced::Verification.fetch('/verifications/BZ30hb4BvSmoUMZiDdIMyz8K')
verification.confirm(
  amount_2 = 1,
  amount_1 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x1049fc888
 @attributes=
  {"id"=>"BZ30hb4BvSmoUMZiDdIMyz8K",
   "href"=>"/verifications/BZ30hb4BvSmoUMZiDdIMyz8K",
   "meta"=>{},
   "attempts"=>1,
   "verification_status"=>"succeeded",
   "deposit_status"=>"succeeded",
   "updated_at"=>"2014-01-24T17:53:12.552232Z",
   "attempts_remaining"=>2,
   "links"=>{"bank_account"=>"BA2YEZjgBPUBzXgxXfjUeenw"},
   "created_at"=>"2014-01-24T17:53:09.290866Z"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x0000000104a86880@./lib/balanced/resources/resource.rb:60>}>

% endif
