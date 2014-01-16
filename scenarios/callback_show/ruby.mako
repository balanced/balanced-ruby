% if mode == 'definition':
Balanced::Callback.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

callback = Balanced::Callback.find('/callbacks/CB6WzqSkxoexLJ4hHmCDv7rh')
% elif mode == 'response':
#<Balanced::Callback:0x10ea852a0
 @attributes=
  {"method"=>"post",
   "links"=>{},
   "id"=>"CB6WzqSkxoexLJ4hHmCDv7rh",
   "url"=>"http://www.example.com/callback",
   "href"=>"/callbacks/CB6WzqSkxoexLJ4hHmCDv7rh",
   "revision"=>"1.1"},
 @hyperlinks={}>

% endif
