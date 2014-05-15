% if mode == 'definition':
Balanced::BankAccountVerification.confirm

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

verification = Balanced::BankAccountVerification.fetch('/verifications/BZ2hpl7vb9rgWVZxrXRzZb93')
verification.confirm(
  amount_1 = 1,
  amount_2 = 1
)


% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa7d19439e8
 @attributes=
  {"attempts"=>1,
   "attempts_remaining"=>2,
   "created_at"=>"2014-05-15T00:38:54.349838Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ2hpl7vb9rgWVZxrXRzZb93",
   "id"=>"BZ2hpl7vb9rgWVZxrXRzZb93",
   "links"=>{"bank_account"=>"BA1W9SQLf5YRaGbUGiNIO2fb"},
   "meta"=>{},
   "updated_at"=>"2014-05-15T00:39:12.507804Z",
   "verification_status"=>"succeeded"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fa7d1931fb8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
