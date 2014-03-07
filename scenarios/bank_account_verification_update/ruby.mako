% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

verification = Balanced::Verification.fetch('/verifications/BZ5alC0fajkuBOvOU7lVT7QJ')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007ff2bd958938
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-03-06T19:22:24.651572Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ5alC0fajkuBOvOU7lVT7QJ",
   "id"=>"BZ5alC0fajkuBOvOU7lVT7QJ",
   "links"=>{"bank_account"=>"BA50LpPrCTB63Ecm0wEgdOQM"},
   "meta"=>{},
   "updated_at"=>"2014-03-06T19:22:27.893114Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007ff2bd95a260/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
