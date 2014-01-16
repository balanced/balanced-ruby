% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA2dV6K5x3YJms1ovXGuATRQ')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x1074cf678
 @attributes=
  {"attempts_remaining"=>3,
   "attempts"=>0,
   "deposit_status"=>"succeeded",
   "verification_status"=>"pending",
   "created_at"=>"2014-01-16T19:56:28.916613Z",
   "meta"=>{},
   "links"=>{"bank_account"=>"BA2dV6K5x3YJms1ovXGuATRQ"},
   "href"=>"/verifications/BZ2fvxTVMYZpggvJbM6iRNZo",
   "id"=>"BZ2fvxTVMYZpggvJbM6iRNZo",
   "updated_at"=>"2014-01-16T19:56:29.472706Z"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>}>

% endif
