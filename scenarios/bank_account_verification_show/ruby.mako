% if mode == 'definition':
Balanced::Verification.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

verification = Balanced::Verification.find('/verifications/BZ3Zea8yCgh4urgmuyiiIdgk')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x1087c3dd8
 @attributes=
  {"created_at"=>"2014-01-16T19:22:17.208147Z",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:22:18.971712Z",
   "id"=>"BZ3Zea8yCgh4urgmuyiiIdgk",
   "links"=>{"bank_account"=>"BA3XWM0MHGvNnTyZFpBA9tlK"},
   "href"=>"/verifications/BZ3Zea8yCgh4urgmuyiiIdgk",
   "attempts_remaining"=>3,
   "verification_status"=>"pending",
   "deposit_status"=>"succeeded",
   "attempts"=>0},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>

% endif
