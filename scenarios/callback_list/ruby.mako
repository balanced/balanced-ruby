% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x1087669d0
  @attributes=
   {"links"=>{},
    "method"=>"post",
    "url"=>"http://www.example.com/callback",
    "href"=>"/callbacks/CB3dRHClJeZ4UFqbLZsR6vUW",
    "revision"=>"1.1",
    "id"=>"CB3dRHClJeZ4UFqbLZsR6vUW"},
  @hyperlinks={}>]

% endif
