% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x10873daf8
  @attributes=
   {"id"=>"CB4enFzJu2dvdf40SHIBUAya",
    "method"=>"post",
    "links"=>{},
    "href"=>"/callbacks/CB4enFzJu2dvdf40SHIBUAya",
    "url"=>"http://www.example.com/callback",
    "revision"=>"1.1"},
  @hyperlinks={}>]

% endif
