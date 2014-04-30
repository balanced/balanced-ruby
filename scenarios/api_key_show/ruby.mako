% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

card = Balanced::ApiKey.fetch('/api_keys/AK7gg5FNb0Owb6hErcMm0CZ7')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fb60b0ed7b0
 @attributes=
  {"created_at"=>"2014-04-25T21:59:54.024155Z",
   "href"=>"/api_keys/AK7gg5FNb0Owb6hErcMm0CZ7",
   "id"=>"AK7gg5FNb0Owb6hErcMm0CZ7",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
