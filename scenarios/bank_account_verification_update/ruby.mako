% if mode == 'definition':
Balanced::BankAccountVerification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

verification = Balanced::BankAccountVerification.fetch('/verifications/BZ6tLSIRoUIhzntA96EfMaQl')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fcde18cc858
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-12-17T21:24:23.094396Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ6tLSIRoUIhzntA96EfMaQl",
   "id"=>"BZ6tLSIRoUIhzntA96EfMaQl",
   "links"=>{"bank_account"=>"BA6m4zboF7ocvKbkhjszP5NS"},
   "meta"=>{},
   "updated_at"=>"2014-12-17T21:24:26.171422Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fcde18bee10/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
