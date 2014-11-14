% if mode == 'definition':
Balanced::BankAccount.verify

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA17zYxBNrmg9isvicjz9Ae4')
verification = bank_account.verify

% elif mode == 'response':
#<Balanced::BankAccountVerification:0x007fa0e13d32e8
 @attributes=
  {"attempts"=>0,
   "attempts_remaining"=>3,
   "created_at"=>"2014-11-14T19:27:13.837146Z",
   "deposit_status"=>"pending",
   "href"=>"/verifications/BZ1eMAsKt13lIj2SkvvHlxfT",
   "id"=>"BZ1eMAsKt13lIj2SkvvHlxfT",
   "links"=>{"bank_account"=>"BA17zYxBNrmg9isvicjz9Ae4"},
   "meta"=>{},
   "updated_at"=>"2014-11-14T19:27:13.837148Z",
   "verification_status"=>"pending"},
 @hyperlinks=
  {"bank_account"=>
    #<Proc:0x007fa0e13d1600@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
