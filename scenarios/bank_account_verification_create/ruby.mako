% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA2YEZjgBPUBzXgxXfjUeenw')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x108811100
 @attributes=
  {"links"=>{"bank_account"=>"BA2YEZjgBPUBzXgxXfjUeenw"},
   "meta"=>{},
   "deposit_status"=>"succeeded",
   "attempts"=>0,
   "created_at"=>"2014-01-24T17:53:09.290866Z",
   "href"=>"/verifications/BZ30hb4BvSmoUMZiDdIMyz8K",
   "attempts_remaining"=>3,
   "verification_status"=>"pending",
   "updated_at"=>"2014-01-24T17:53:09.797613Z",
   "id"=>"BZ30hb4BvSmoUMZiDdIMyz8K"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>}>

% endif
