% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::ApiKey.fetch('/api_keys/AK6vYazRHYGP5Tiqeuo9kMUq')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fbaa20a0410
 @attributes=
  {"created_at"=>"2014-03-20T18:17:03.149237Z",
   "href"=>"/api_keys/AK6vYazRHYGP5Tiqeuo9kMUq",
   "id"=>"AK6vYazRHYGP5Tiqeuo9kMUq",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
