% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x1086ac828
 @attributes=
  {"created_at"=>"2014-01-16T20:00:34.173888Z",
   "attempts_remaining"=>3,
   "verification_status"=>"pending",
   "meta"=>{},
   "deposit_status"=>"succeeded",
   "attempts"=>0,
   "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
   "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
   "updated_at"=>"2014-01-16T20:00:34.726463Z"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>}>

% endif
