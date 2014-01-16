% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x101fe2840
 @attributes=
  {"meta"=>{},
   "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
   "created_at"=>"2014-01-16T20:00:34.173888Z",
   "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "attempts"=>0,
   "updated_at"=>"2014-01-16T20:00:34.726463Z",
   "attempts_remaining"=>3,
   "verification_status"=>"pending",
   "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "deposit_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>}>

% endif
