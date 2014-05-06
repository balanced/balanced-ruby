% if mode == 'definition':
Balanced::Verification.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

verification = Balanced::Verification.fetch('/verifications/BZ7n38gpwYou03mkP4Vt83Cl')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fb60b33b648
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-04-25T22:00:00.062125Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ7n38gpwYou03mkP4Vt83Cl",
   "id"=>"BZ7n38gpwYou03mkP4Vt83Cl",
   "links"=>{"bank_account"=>"BA7lb2roygfhwDfbvikDLcHP"},
   "meta"=>{},
   "updated_at"=>"2014-04-25T22:00:00.483961Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fb60b3397f8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
