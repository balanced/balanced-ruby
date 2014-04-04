% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fc09e05c498
 @attributes=
  {"created_at"=>"2014-04-01T16:37:57.853750Z",
   "href"=>"/api_keys/AK7EjZ7fq7gpLRj9HQNh12UE",
   "id"=>"AK7EjZ7fq7gpLRj9HQNh12UE",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-JGEHiexEycXaIFwAMkSbYav7VRvTQ2Om"},
 @hyperlinks={}>

% endif
