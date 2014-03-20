% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fefdb878d68
  @attributes=
   {"created_at"=>"2014-03-06T19:22:18.256643Z",
    "href"=>"/api_keys/AK4Vt1mJyCtjdSiGgqAebarR",
    "id"=>"AK4Vt1mJyCtjdSiGgqAebarR",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fefdb878bb0
  @attributes=
   {"created_at"=>"2014-03-06T19:22:11.872886Z",
    "href"=>"/api_keys/AK4OhVZUPzjD3YSCWBjU1dHO",
    "id"=>"AK4OhVZUPzjD3YSCWBjU1dHO",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul"},
  @hyperlinks={}>]

% endif
