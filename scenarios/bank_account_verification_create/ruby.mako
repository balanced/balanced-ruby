% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA7JTM3gXtLHz4juPfeQ4oqz')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fc09e281f48
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-04-01T16:38:04.567904Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ7zjJJJqb1VU633qQw0z1Vc",
   "id"=>"BZ7zjJJJqb1VU633qQw0z1Vc",
   "links"=>{"bank_account"=>"BA7JTM3gXtLHz4juPfeQ4oqz"},
   "meta"=>{},
   "updated_at"=>"2014-04-01T16:38:04.857045Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fc09e280468/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
