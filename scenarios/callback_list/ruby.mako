% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x007fa7d18987a0
  @attributes=
   {"href"=>"/callbacks/CB2YCHTwHXMx9fZRKSbW3wNj",
    "id"=>"CB2YCHTwHXMx9fZRKSbW3wNj",
    "links"=>{},
    "method"=>"post",
    "revision"=>"1.1",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
