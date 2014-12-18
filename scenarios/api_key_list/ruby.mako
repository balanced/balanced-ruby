% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fcde3ae3c20
  @attributes=
   {"created_at"=>"2014-12-17T21:24:11.308489Z",
    "href"=>"/api_keys/AK6gw2iNQrFpQk7jb8ONNjdb",
    "id"=>"AK6gw2iNQrFpQk7jb8ONNjdb",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fcde3ae3a68
  @attributes=
   {"created_at"=>"2014-12-17T21:23:56.753175Z",
    "href"=>"/api_keys/AK609iYW4vCKAiy9TqR73hDi",
    "id"=>"AK609iYW4vCKAiy9TqR73hDi",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX"},
  @hyperlinks={}>]

% endif
