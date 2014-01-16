% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x108869a30
 @attributes=
  {"created_at"=>"2014-01-16T19:22:11.900488Z",
   "meta"=>{},
   "id"=>"AK3Tg2FrgGv8IkNFTMEyEmqA",
   "links"=>{},
   "secret"=>"ak-test-1SrlGoWLJCl8BbYRCticYmr0rDkloglNW",
   "href"=>"/api_keys/AK3Tg2FrgGv8IkNFTMEyEmqA"},
 @hyperlinks={}>

% endif
