% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x10e4080a8
 @attributes=
  {"method"=>"post",
   "url"=>"http://www.example.com/callback",
   "links"=>{},
   "revision"=>"1.1",
   "id"=>"CB40OMtABWHqkGcBEYpWVnAd",
   "href"=>"/callbacks/CB40OMtABWHqkGcBEYpWVnAd"},
 @hyperlinks={}>

% endif
