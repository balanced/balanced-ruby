% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card = Balanced::ApiKey.fetch('/api_keys/AK7EjZ7fq7gpLRj9HQNh12UE')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fc09e102de8
 @attributes=
  {"created_at"=>"2014-04-01T16:37:57.853750Z",
   "href"=>"/api_keys/AK7EjZ7fq7gpLRj9HQNh12UE",
   "id"=>"AK7EjZ7fq7gpLRj9HQNh12UE",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
