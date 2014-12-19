% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fcde137bbd8
 @attributes=
  {"created_at"=>"2014-12-17T21:24:11.308489Z",
   "href"=>"/api_keys/AK6gw2iNQrFpQk7jb8ONNjdb",
   "id"=>"AK6gw2iNQrFpQk7jb8ONNjdb",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-29kmTuMRgZTtOFmeMWVUclctfpNQnlUb5"},
 @hyperlinks={}>

% endif
