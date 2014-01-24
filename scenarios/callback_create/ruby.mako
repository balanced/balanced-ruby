% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x10878d080
 @attributes=
  {"links"=>{},
   "method"=>"post",
   "url"=>"http://www.example.com/callback",
   "href"=>"/callbacks/CB3dRHClJeZ4UFqbLZsR6vUW",
   "revision"=>"1.1",
   "id"=>"CB3dRHClJeZ4UFqbLZsR6vUW"},
 @hyperlinks={}>

% endif
