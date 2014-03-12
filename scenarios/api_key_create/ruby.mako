% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fa4e49e9748
 @attributes=
  {"created_at"=>"2014-03-06T19:22:18.256643Z",
   "href"=>"/api_keys/AK4Vt1mJyCtjdSiGgqAebarR",
   "id"=>"AK4Vt1mJyCtjdSiGgqAebarR",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-4bQUCg96rUwLV8FZXSTeq8WUSqROO9yT"},
 @hyperlinks={}>

% endif
