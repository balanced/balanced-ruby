% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

verification = Balanced::Verification.fetch('/verifications/BZ2AZ05mk2SQsEcicjSh3UN')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fb793dd3a90
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-04-17T22:38:45.205941Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ2AZ05mk2SQsEcicjSh3UN",
   "id"=>"BZ2AZ05mk2SQsEcicjSh3UN",
   "links"=>{"bank_account"=>"BAcRGk40xmI8meZpNLB3oYp"},
   "meta"=>{},
   "updated_at"=>"2014-04-17T22:38:49.126263Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fb793dd1f38/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
