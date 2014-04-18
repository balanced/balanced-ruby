% if mode == 'definition':
Balanced::Verification.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

verification = Balanced::Verification.fetch('/verifications/BZ2AZ05mk2SQsEcicjSh3UN')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fb793dea4e8
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-04-17T22:38:45.205941Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ2AZ05mk2SQsEcicjSh3UN",
   "id"=>"BZ2AZ05mk2SQsEcicjSh3UN",
   "links"=>{"bank_account"=>"BAcRGk40xmI8meZpNLB3oYp"},
   "meta"=>{},
   "updated_at"=>"2014-04-17T22:38:45.505191Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fb793de8940/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
