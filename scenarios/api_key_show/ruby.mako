% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::ApiKey.fetch('/api_keys/AK7KGjv4YKtOf03Lqm0f84V')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fb794c0e1c8
 @attributes=
  {"created_at"=>"2014-04-17T22:38:39.103798Z",
   "href"=>"/api_keys/AK7KGjv4YKtOf03Lqm0f84V",
   "id"=>"AK7KGjv4YKtOf03Lqm0f84V",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
