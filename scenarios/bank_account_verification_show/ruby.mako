% if mode == 'definition':
Balanced::Verification.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

verification = Balanced::Verification.fetch('/verifications/BZ6CHglHXFOUsyrdMAvPN2LZ')

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fbaa410c528
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-03-20T18:17:09.132006Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ6CHglHXFOUsyrdMAvPN2LZ",
   "id"=>"BZ6CHglHXFOUsyrdMAvPN2LZ",
   "links"=>{"bank_account"=>"BA6ARjzdSjbnDWFK6ykjuGhy"},
   "meta"=>{},
   "updated_at"=>"2014-03-20T18:17:10.618290Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fbaa60369f8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
