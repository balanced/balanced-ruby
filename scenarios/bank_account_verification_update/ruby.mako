% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

verification = Balanced::Verification.fetch('/verifications/BZ3NheXIi1UxUiNtkaSo1ZI5')
verification.confirm(
  amount_2 = 1,
  amount_1 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x10680e2e0
 @attributes=
  {"attempts_remaining"=>2,
   "attempts"=>1,
   "links"=>{"bank_account"=>"BA3EMnkybAfEzVlbVquXFLEk"},
   "deposit_status"=>"succeeded",
   "created_at"=>"2014-03-05T23:25:43.892899Z",
   "href"=>"/verifications/BZ3NheXIi1UxUiNtkaSo1ZI5",
   "id"=>"BZ3NheXIi1UxUiNtkaSo1ZI5",
   "verification_status"=>"succeeded",
   "updated_at"=>"2014-03-05T23:25:46.812376Z",
   "meta"=>{}},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
