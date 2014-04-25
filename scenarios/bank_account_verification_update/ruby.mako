% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

verification = Balanced::Verification.fetch('/verifications/BZ3KkIZuSazKfqFrFIfsrhmB')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa93ea84a78
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-04-25T20:09:17.814785Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ3KkIZuSazKfqFrFIfsrhmB",
   "id"=>"BZ3KkIZuSazKfqFrFIfsrhmB",
   "links"=>{"bank_account"=>"BA3IhKG3bIN22cLHbaOIGtHb"},
   "meta"=>{},
   "updated_at"=>"2014-04-25T20:09:20.852682Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fa93ea7ebf0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
