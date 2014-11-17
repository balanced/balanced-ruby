% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::ApiKey.fetch('/api_keys/AKJnLWedoBhUHpdhoGEOPew')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fa0e1a1d3d8
 @attributes=
  {"created_at"=>"2014-11-14T19:26:45.904618Z",
   "href"=>"/api_keys/AKJnLWedoBhUHpdhoGEOPew",
   "id"=>"AKJnLWedoBhUHpdhoGEOPew",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
