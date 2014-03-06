% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3EMnkybAfEzVlbVquXFLEk')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x10682d690
 @attributes=
  {"attempts_remaining"=>3,
   "attempts"=>0,
   "links"=>{"bank_account"=>"BA3EMnkybAfEzVlbVquXFLEk"},
   "deposit_status"=>"succeeded",
   "created_at"=>"2014-03-05T23:25:43.892899Z",
   "href"=>"/verifications/BZ3NheXIi1UxUiNtkaSo1ZI5",
   "id"=>"BZ3NheXIi1UxUiNtkaSo1ZI5",
   "verification_status"=>"pending",
   "updated_at"=>"2014-03-05T23:25:44.308407Z",
   "meta"=>{}},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
