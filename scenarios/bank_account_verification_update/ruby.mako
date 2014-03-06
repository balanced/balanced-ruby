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
#<Balanced::BankAccountVerification:0x10e417b20
 @attributes=
  {"verification_status"=>"succeeded",
   "links"=>{"bank_account"=>"BA3EMnkybAfEzVlbVquXFLEk"},
   "attempts_remaining"=>2,
   "attempts"=>1,
   "created_at"=>"2014-03-05T23:25:43.892899Z",
   "id"=>"BZ3NheXIi1UxUiNtkaSo1ZI5",
   "href"=>"/verifications/BZ3NheXIi1UxUiNtkaSo1ZI5",
   "meta"=>{},
   "updated_at"=>"2014-03-05T23:25:46.812376Z",
   "deposit_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>}>

% endif
