% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

callback = Balanced::Callback.fetch('/callbacks/CB40OMtABWHqkGcBEYpWVnAd')
% elif mode == 'response':
#<Balanced::Callback:0x1067ea3e0
 @attributes=
  {"links"=>{},
   "method"=>"post",
   "href"=>"/callbacks/CB40OMtABWHqkGcBEYpWVnAd",
   "id"=>"CB40OMtABWHqkGcBEYpWVnAd",
   "url"=>"http://www.example.com/callback",
   "revision"=>"1.1"},
 @hyperlinks={}>

% endif
