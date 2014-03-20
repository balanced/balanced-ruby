% if mode == 'definition':
Balanced::Verification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

verification = Balanced::Verification.fetch('/verifications/BZ6CHglHXFOUsyrdMAvPN2LZ')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fbaa6045d90
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-03-20T18:17:09.132006Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ6CHglHXFOUsyrdMAvPN2LZ",
   "id"=>"BZ6CHglHXFOUsyrdMAvPN2LZ",
   "links"=>{"bank_account"=>"BA6ARjzdSjbnDWFK6ykjuGhy"},
   "meta"=>{},
   "updated_at"=>"2014-03-20T18:17:13.251706Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fbaa60442b0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
