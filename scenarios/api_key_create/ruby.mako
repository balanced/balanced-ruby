% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x10872eb48
 @attributes=
  {"created_at"=>"2014-01-16T20:00:27.808324Z",
   "meta"=>{},
   "links"=>{},
   "secret"=>"ak-test-1CQXWPCmSgcb6o1aK1yLXMCMQTFKcXtwj",
   "id"=>"AK6Ac9V3vfsOSGwL7ypnQp7k",
   "href"=>"/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k"},
 @hyperlinks={}>

% endif
