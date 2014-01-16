% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

callback = Balanced::Callback.new(
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x10875a1f8
 @attributes=
  {"id"=>"CB4enFzJu2dvdf40SHIBUAya",
   "method"=>"post",
   "links"=>{},
   "href"=>"/callbacks/CB4enFzJu2dvdf40SHIBUAya",
   "url"=>"http://www.example.com/callback",
   "revision"=>"1.1"},
 @hyperlinks={}>

% endif
