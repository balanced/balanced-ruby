% if mode == 'definition':
Balanced::BankAccount.verify

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1W9SQLf5YRaGbUGiNIO2fb')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa7d19ffc10
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-05-15T00:38:54.349838Z",
   "deposit_status"=>"succeeded",
   "href"=>"/verifications/BZ2hpl7vb9rgWVZxrXRzZb93",
   "id"=>"BZ2hpl7vb9rgWVZxrXRzZb93",
   "links"=>{"bank_account"=>"BA1W9SQLf5YRaGbUGiNIO2fb"},
   "meta"=>{},
   "updated_at"=>"2014-05-15T00:39:05.155113Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fa7d19fc628/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
