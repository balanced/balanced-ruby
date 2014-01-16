% if mode == 'definition':
Balanced::Verification.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

verification = Balanced::Verification.find('/verifications/BZ3Zea8yCgh4urgmuyiiIdgk')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x108791d88
 @attributes=
  {"created_at"=>"2014-01-16T19:22:17.208147Z",
   "meta"=>{},
   "updated_at"=>"2014-01-16T19:22:21.745326Z",
   "id"=>"BZ3Zea8yCgh4urgmuyiiIdgk",
   "links"=>{"bank_account"=>"BA3XWM0MHGvNnTyZFpBA9tlK"},
   "href"=>"/verifications/BZ3Zea8yCgh4urgmuyiiIdgk",
   "attempts_remaining"=>2,
   "verification_status"=>"succeeded",
   "deposit_status"=>"succeeded",
   "attempts"=>1},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>

% endif
