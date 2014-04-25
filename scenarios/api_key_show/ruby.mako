% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::ApiKey.fetch('/api_keys/AK3DgZwSCD2ggxGSw1bsiyDX')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fa93eb45a48
 @attributes=
  {"created_at"=>"2014-04-25T20:09:11.537493Z",
   "href"=>"/api_keys/AK3DgZwSCD2ggxGSw1bsiyDX",
   "id"=>"AK3DgZwSCD2ggxGSw1bsiyDX",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
