% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

callback = Balanced::Callback.fetch('/callbacks/CB6Kwv0b8cXnsPSn3pR88xYk')
% elif mode == 'response':
#<Balanced::Callback:0x007fcde188db30
 @attributes=
  {"href"=>"/callbacks/CB6Kwv0b8cXnsPSn3pR88xYk",
   "id"=>"CB6Kwv0b8cXnsPSn3pR88xYk",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
