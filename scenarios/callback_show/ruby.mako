% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

callback = Balanced::Callback.fetch('/callbacks/CB2YCHTwHXMx9fZRKSbW3wNj')
% elif mode == 'response':
#<Balanced::Callback:0x007fa7d18425f8
 @attributes=
  {"href"=>"/callbacks/CB2YCHTwHXMx9fZRKSbW3wNj",
   "id"=>"CB2YCHTwHXMx9fZRKSbW3wNj",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
