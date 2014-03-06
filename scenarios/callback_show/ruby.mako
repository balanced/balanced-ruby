% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

callback = Balanced::Callback.fetch('/callbacks/CB40OMtABWHqkGcBEYpWVnAd')
% elif mode == 'response':
#<Balanced::Callback:0x10e3f3978
 @attributes=
  {"method"=>"post",
   "url"=>"http://www.example.com/callback",
   "links"=>{},
   "revision"=>"1.1",
   "id"=>"CB40OMtABWHqkGcBEYpWVnAd",
   "href"=>"/callbacks/CB40OMtABWHqkGcBEYpWVnAd"},
 @hyperlinks={}>

% endif
