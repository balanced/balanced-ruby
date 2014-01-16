% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x1088498c0
  @attributes=
   {"created_at"=>"2014-01-16T19:22:11.900488Z",
    "meta"=>{},
    "id"=>"AK3Tg2FrgGv8IkNFTMEyEmqA",
    "links"=>{},
    "href"=>"/api_keys/AK3Tg2FrgGv8IkNFTMEyEmqA"},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x1088485b0
  @attributes=
   {"created_at"=>"2014-01-16T19:22:06.367843Z",
    "meta"=>{},
    "id"=>"AK3N4bu7LqFHEMFv3gDMoeKP",
    "links"=>{},
    "secret"=>"ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7",
    "href"=>"/api_keys/AK3N4bu7LqFHEMFv3gDMoeKP"},
  @hyperlinks={}>]

% endif
