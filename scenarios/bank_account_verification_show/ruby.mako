% if mode == 'definition':
Balanced::Verification.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

verification = Balanced::Verification.fetch('/verifications/BZ3KkIZuSazKfqFrFIfsrhmB')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa6d24e48c0
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
    #<Proc:0x007fa6d24deb50/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
