% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

verification = Balanced::Verification.fetch('/verifications/BZ7zjJJJqb1VU633qQw0z1Vc')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fc09e2a92f0
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-04-01T16:38:04.567904Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ7zjJJJqb1VU633qQw0z1Vc",
   "id"=>"BZ7zjJJJqb1VU633qQw0z1Vc",
   "links"=>{"bank_account"=>"BA7JTM3gXtLHz4juPfeQ4oqz"},
   "meta"=>{},
   "updated_at"=>"2014-04-01T16:38:07.513775Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fc09e2b37c8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
