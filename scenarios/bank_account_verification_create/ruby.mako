% if mode == 'definition':
Balanced::BankAccount.verify

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6m4zboF7ocvKbkhjszP5NS')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fcde11e3bb8
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-12-17T21:24:23.094396Z",
   "deposit_status"=>"pending",
   "href"=>"/verifications/BZ6tLSIRoUIhzntA96EfMaQl",
   "id"=>"BZ6tLSIRoUIhzntA96EfMaQl",
   "links"=>{"bank_account"=>"BA6m4zboF7ocvKbkhjszP5NS"},
   "meta"=>{},
   "updated_at"=>"2014-12-17T21:24:23.094398Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fcde11e2010/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
