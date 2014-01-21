% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

callback = Balanced::Callback.fetch('/callbacks/CB6WzqSkxoexLJ4hHmCDv7rh')
% elif mode == 'response':
#<Balanced::Callback:0x1085ea098
 @attributes=
  {"method"=>"post",
   "url"=>"http://www.example.com/callback",
   "revision"=>"1.1",
   "links"=>{},
   "id"=>"CB6WzqSkxoexLJ4hHmCDv7rh",
   "href"=>"/callbacks/CB6WzqSkxoexLJ4hHmCDv7rh"},
 @hyperlinks={}>

% endif
