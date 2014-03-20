% if mode == 'definition':
Balanced::Verification.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

verification = Balanced::Verification.fetch('/verifications/BZ5alC0fajkuBOvOU7lVT7QJ')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fefdb01b710
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-03-06T19:22:24.651572Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ5alC0fajkuBOvOU7lVT7QJ",
   "id"=>"BZ5alC0fajkuBOvOU7lVT7QJ",
   "links"=>{"bank_account"=>"BA50LpPrCTB63Ecm0wEgdOQM"},
   "meta"=>{},
   "updated_at"=>"2014-03-06T19:22:25.233126Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fefdb019c30/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
