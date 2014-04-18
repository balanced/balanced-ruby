% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

callback = Balanced::Callback.new(
  :method => 'post',
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x007fb793dc06e8
 @attributes=
  {"href"=>"/callbacks/CBwxLHWPLsoBqKqVyUvZRKp",
   "id"=>"CBwxLHWPLsoBqKqVyUvZRKp",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
