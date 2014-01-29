% if mode == 'definition':
Balanced::Verification.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

verification = Balanced::Verification.fetch('/verifications/BZ1FF2MHFH9upRu7C0QUwnby')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fdc9c1989c8
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-01-27T22:56:10.726455Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ1FF2MHFH9upRu7C0QUwnby",
   "id"=>"BZ1FF2MHFH9upRu7C0QUwnby",
   "links"=>{"bank_account"=>"BA1D3vL3LjasB0kewMqRGI0S"},
   "meta"=>{},
   "updated_at"=>"2014-01-27T22:56:12.545750Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fdc9c1a2b58/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
