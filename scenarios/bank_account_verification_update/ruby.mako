% if mode == 'definition':
Balanced::BankAccountVerification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

verification = Balanced::BankAccountVerification.fetch('/verifications/BZ1eMAsKt13lIj2SkvvHlxfT')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa0e13e5380
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-11-14T19:27:13.837146Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ1eMAsKt13lIj2SkvvHlxfT",
   "id"=>"BZ1eMAsKt13lIj2SkvvHlxfT",
   "links"=>{"bank_account"=>"BA17zYxBNrmg9isvicjz9Ae4"},
   "meta"=>{},
   "updated_at"=>"2014-11-14T19:27:24.030337Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fa0e13eb690@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
