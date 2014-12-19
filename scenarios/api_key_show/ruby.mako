% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card = Balanced::ApiKey.fetch('/api_keys/AK6gw2iNQrFpQk7jb8ONNjdb')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fcde3af2658
 @attributes=
  {"created_at"=>"2014-12-17T21:24:11.308489Z",
   "href"=>"/api_keys/AK6gw2iNQrFpQk7jb8ONNjdb",
   "id"=>"AK6gw2iNQrFpQk7jb8ONNjdb",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
