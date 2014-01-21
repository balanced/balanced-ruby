% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x10870e208
  @attributes=
   {"created_at"=>"2014-01-16T20:00:27.808324Z",
    "meta"=>{},
    "links"=>{},
    "id"=>"AK6Ac9V3vfsOSGwL7ypnQp7k",
    "href"=>"/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k"},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x108702db8
  @attributes=
   {"created_at"=>"2014-01-16T20:00:19.288754Z",
    "meta"=>{},
    "links"=>{},
    "secret"=>"ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM",
    "id"=>"AK6qC9g58RWrYvUuJ0JHjeQ8",
    "href"=>"/api_keys/AK6qC9g58RWrYvUuJ0JHjeQ8"},
  @hyperlinks={}>]

% endif
