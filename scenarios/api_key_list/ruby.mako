% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fa6d257f078
  @attributes=
   {"created_at"=>"2014-04-25T20:09:11.537493Z",
    "href"=>"/api_keys/AK3DgZwSCD2ggxGSw1bsiyDX",
    "id"=>"AK3DgZwSCD2ggxGSw1bsiyDX",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fa6d257eec0
  @attributes=
   {"created_at"=>"2014-04-25T20:09:07.465428Z",
    "href"=>"/api_keys/AK3yH23MtlEAProTVXwOnvWl",
    "id"=>"AK3yH23MtlEAProTVXwOnvWl",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV"},
  @hyperlinks={}>]

% endif
