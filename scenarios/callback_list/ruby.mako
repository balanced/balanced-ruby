% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x007fb793daac08
  @attributes=
   {"href"=>"/callbacks/CBwxLHWPLsoBqKqVyUvZRKp",
    "id"=>"CBwxLHWPLsoBqKqVyUvZRKp",
    "links"=>{},
    "method"=>"post",
    "revision"=>"1.1",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
