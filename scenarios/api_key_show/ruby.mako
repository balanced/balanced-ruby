% if mode == 'definition':
Balanced::ApiKey.find
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::ApiKey.find('/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k')
% elif mode == 'response':
#<Balanced::ApiKey:0x10eb6f760
 @attributes=
  {"meta"=>{},
   "links"=>{},
   "id"=>"AK6Ac9V3vfsOSGwL7ypnQp7k",
   "href"=>"/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k",
   "created_at"=>"2014-01-16T20:00:27.808324Z"},
 @hyperlinks={}>

% endif
