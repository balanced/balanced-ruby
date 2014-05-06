% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

verification = Balanced::Verification.fetch('/verifications/BZ7n38gpwYou03mkP4Vt83Cl')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fb60b347740
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-04-25T22:00:00.062125Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ7n38gpwYou03mkP4Vt83Cl",
   "id"=>"BZ7n38gpwYou03mkP4Vt83Cl",
   "links"=>{"bank_account"=>"BA7lb2roygfhwDfbvikDLcHP"},
   "meta"=>{},
   "updated_at"=>"2014-04-25T22:00:03.198401Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fb60b34d488/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
