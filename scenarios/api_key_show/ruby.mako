% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card = Balanced::ApiKey.fetch('/api_keys/AK4Vt1mJyCtjdSiGgqAebarR')
% elif mode == 'response':
#<Balanced::ApiKey:0x007ff2bc1124f0
 @attributes=
  {"created_at"=>"2014-03-06T19:22:18.256643Z",
   "href"=>"/api_keys/AK4Vt1mJyCtjdSiGgqAebarR",
   "id"=>"AK4Vt1mJyCtjdSiGgqAebarR",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
