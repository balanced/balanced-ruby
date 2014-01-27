% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

verification = Balanced::Verification.fetch('/verifications/BZ1FF2MHFH9upRu7C0QUwnby')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fdc9c1b85c0
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-01-27T22:56:10.726455Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ1FF2MHFH9upRu7C0QUwnby",
   "id"=>"BZ1FF2MHFH9upRu7C0QUwnby",
   "links"=>{"bank_account"=>"BA1D3vL3LjasB0kewMqRGI0S"},
   "meta"=>{},
   "updated_at"=>"2014-01-27T22:56:18.631337Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fdc9c1c2750/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
