% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x101f359d8
  @attributes=
   {"links"=>{},
    "id"=>"CB6WzqSkxoexLJ4hHmCDv7rh",
    "url"=>"http://www.example.com/callback",
    "revision"=>"1.1",
    "method"=>"post",
    "href"=>"/callbacks/CB6WzqSkxoexLJ4hHmCDv7rh"},
  @hyperlinks={}>]

% endif
