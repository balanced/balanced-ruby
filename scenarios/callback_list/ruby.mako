% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x007fc09e2d2470
  @attributes=
   {"href"=>"/callbacks/CB6K21Z5b8imJRPeZEBoHPq",
    "id"=>"CB6K21Z5b8imJRPeZEBoHPq",
    "links"=>{},
    "method"=>"post",
    "revision"=>"1.1",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
