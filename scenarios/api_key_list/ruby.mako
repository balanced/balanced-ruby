% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x10203ecf8
  @attributes=
   {"meta"=>{},
    "links"=>{},
    "created_at"=>"2014-01-16T20:00:27.808324Z",
    "id"=>"AK6Ac9V3vfsOSGwL7ypnQp7k",
    "href"=>"/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k"},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x10203d6a0
  @attributes=
   {"secret"=>"ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM",
    "meta"=>{},
    "links"=>{},
    "created_at"=>"2014-01-16T20:00:19.288754Z",
    "id"=>"AK6qC9g58RWrYvUuJ0JHjeQ8",
    "href"=>"/api_keys/AK6qC9g58RWrYvUuJ0JHjeQ8"},
  @hyperlinks={}>]

% endif
