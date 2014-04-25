% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fa6d256f0b0
 @attributes=
  {"created_at"=>"2014-04-25T20:09:11.537493Z",
   "href"=>"/api_keys/AK3DgZwSCD2ggxGSw1bsiyDX",
   "id"=>"AK3DgZwSCD2ggxGSw1bsiyDX",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-2hjXn5Ny6P9aFu5jitCvkF06nNIHc3sYN"},
 @hyperlinks={}>

% endif
