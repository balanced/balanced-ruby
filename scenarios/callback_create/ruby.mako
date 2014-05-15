% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

callback = Balanced::Callback.new(
  :method => 'post',
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x007fa7d18d5d58
 @attributes=
  {"href"=>"/callbacks/CB2YCHTwHXMx9fZRKSbW3wNj",
   "id"=>"CB2YCHTwHXMx9fZRKSbW3wNj",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
