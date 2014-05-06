% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fb60b0a5f28
  @attributes=
   {"created_at"=>"2014-04-25T21:59:54.024155Z",
    "href"=>"/api_keys/AK7gg5FNb0Owb6hErcMm0CZ7",
    "id"=>"AK7gg5FNb0Owb6hErcMm0CZ7",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fb60b0a53e8
  @attributes=
   {"created_at"=>"2014-04-25T21:59:50.043427Z",
    "href"=>"/api_keys/AK7bMzEELSMo1K5qIHeEVmxb",
    "id"=>"AK7bMzEELSMo1K5qIHeEVmxb",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq"},
  @hyperlinks={}>]

% endif
