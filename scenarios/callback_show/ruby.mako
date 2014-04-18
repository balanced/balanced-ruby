% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

callback = Balanced::Callback.fetch('/callbacks/CBwxLHWPLsoBqKqVyUvZRKp')
% elif mode == 'response':
#<Balanced::Callback:0x007fb793da0190
 @attributes=
  {"href"=>"/callbacks/CBwxLHWPLsoBqKqVyUvZRKp",
   "id"=>"CBwxLHWPLsoBqKqVyUvZRKp",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
