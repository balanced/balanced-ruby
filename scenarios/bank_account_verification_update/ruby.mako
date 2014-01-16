% if mode == 'definition':
Balanced::Verification.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

verification = Balanced::Verification.find('/verifications/BZ2fvxTVMYZpggvJbM6iRNZo')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x107478378
 @attributes=
  {"attempts_remaining"=>2,
   "attempts"=>1,
   "deposit_status"=>"succeeded",
   "verification_status"=>"succeeded",
   "created_at"=>"2014-01-16T19:56:28.916613Z",
   "meta"=>{},
   "links"=>{"bank_account"=>"BA2dV6K5x3YJms1ovXGuATRQ"},
   "href"=>"/verifications/BZ2fvxTVMYZpggvJbM6iRNZo",
   "id"=>"BZ2fvxTVMYZpggvJbM6iRNZo",
   "updated_at"=>"2014-01-16T19:56:32.384350Z"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>}>

% endif
