% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fb794bff790
  @attributes=
   {"created_at"=>"2014-04-17T22:38:39.103798Z",
    "href"=>"/api_keys/AK7KGjv4YKtOf03Lqm0f84V",
    "id"=>"AK7KGjv4YKtOf03Lqm0f84V",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fb794bff5d8
  @attributes=
   {"created_at"=>"2014-04-17T22:38:35.391290Z",
    "href"=>"/api_keys/AK7ECC1DqHzhodZKpo3rs2yh",
    "id"=>"AK7ECC1DqHzhodZKpo3rs2yh",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s"},
  @hyperlinks={}>]

% endif
