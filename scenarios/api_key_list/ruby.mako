% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fc09e0cc450
  @attributes=
   {"created_at"=>"2014-04-01T16:37:57.853750Z",
    "href"=>"/api_keys/AK7EjZ7fq7gpLRj9HQNh12UE",
    "id"=>"AK7EjZ7fq7gpLRj9HQNh12UE",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fc09e0cc298
  @attributes=
   {"created_at"=>"2014-04-01T16:37:52.241644Z",
    "href"=>"/api_keys/AK7y0CM69wf3kll3oDfcem1k",
    "id"=>"AK7y0CM69wf3kll3oDfcem1k",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr"},
  @hyperlinks={}>]

% endif
