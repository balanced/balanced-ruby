% if mode == 'definition':
    Balanced::Verification.new.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3IhKG3bIN22cLHbaOIGtHb')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa6d24fcb28
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-04-25T20:09:17.814785Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ3KkIZuSazKfqFrFIfsrhmB",
   "id"=>"BZ3KkIZuSazKfqFrFIfsrhmB",
   "links"=>{"bank_account"=>"BA3IhKG3bIN22cLHbaOIGtHb"},
   "meta"=>{},
   "updated_at"=>"2014-04-25T20:09:18.218504Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fa6d24f62c8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
