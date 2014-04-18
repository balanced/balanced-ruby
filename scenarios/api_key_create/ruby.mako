% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fb793ee77b0
 @attributes=
  {"created_at"=>"2014-04-17T22:38:39.103798Z",
   "href"=>"/api_keys/AK7KGjv4YKtOf03Lqm0f84V",
   "id"=>"AK7KGjv4YKtOf03Lqm0f84V",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-1DSRO02OhucdVxve32NKh57AHNr4kmhb"},
 @hyperlinks={}>

% endif
