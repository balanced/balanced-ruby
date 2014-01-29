% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card = Balanced::ApiKey.fetch('/api_keys/AK1vqjn1eEHXP0JYXrBrjH5c')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fdc9d2d6e88
 @attributes=
  {"created_at"=>"2014-01-27T22:56:01.641736Z",
   "href"=>"/api_keys/AK1vqjn1eEHXP0JYXrBrjH5c",
   "id"=>"AK1vqjn1eEHXP0JYXrBrjH5c",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
