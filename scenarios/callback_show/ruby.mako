% if mode == 'definition':
Balanced::Callback.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

callback = Balanced::Callback.find('/callbacks/CB4enFzJu2dvdf40SHIBUAya')
% elif mode == 'response':
#<Balanced::Callback:0x108726290
 @attributes=
  {"id"=>"CB4enFzJu2dvdf40SHIBUAya",
   "method"=>"post",
   "links"=>{},
   "href"=>"/callbacks/CB4enFzJu2dvdf40SHIBUAya",
   "url"=>"http://www.example.com/callback",
   "revision"=>"1.1"},
 @hyperlinks={}>

% endif
