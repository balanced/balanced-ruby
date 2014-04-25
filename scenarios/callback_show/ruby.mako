% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

callback = Balanced::Callback.fetch('/callbacks/CB44XaMOcxsUnuQoA5A4VKCx')
% elif mode == 'response':
#<Balanced::Callback:0x007fa6d24943c0
 @attributes=
  {"href"=>"/callbacks/CB44XaMOcxsUnuQoA5A4VKCx",
   "id"=>"CB44XaMOcxsUnuQoA5A4VKCx",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
