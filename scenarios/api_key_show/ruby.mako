% if mode == 'definition':
Balanced::ApiKey.find
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::ApiKey.find('/api_keys/AK3Tg2FrgGv8IkNFTMEyEmqA')
% elif mode == 'response':
#<Balanced::ApiKey:0x1088143a0
 @attributes=
  {"created_at"=>"2014-01-16T19:22:11.900488Z",
   "meta"=>{},
   "id"=>"AK3Tg2FrgGv8IkNFTMEyEmqA",
   "links"=>{},
   "href"=>"/api_keys/AK3Tg2FrgGv8IkNFTMEyEmqA"},
 @hyperlinks={}>

% endif
