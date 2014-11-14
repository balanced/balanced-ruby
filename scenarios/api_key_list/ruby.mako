% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fa0e1a00b98
  @attributes=
   {"created_at"=>"2014-11-14T19:26:45.904618Z",
    "href"=>"/api_keys/AKJnLWedoBhUHpdhoGEOPew",
    "id"=>"AKJnLWedoBhUHpdhoGEOPew",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fa0e1a00788
  @attributes=
   {"created_at"=>"2014-11-14T19:26:35.869158Z",
    "href"=>"/api_keys/AKy5ZTdpj24KwJScnRtU0q4",
    "id"=>"AKy5ZTdpj24KwJScnRtU0q4",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0"},
  @hyperlinks={}>]

% endif
