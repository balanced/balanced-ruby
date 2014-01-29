% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fdc9d289228
 @attributes=
  {"created_at"=>"2014-01-27T22:56:01.641736Z",
   "href"=>"/api_keys/AK1vqjn1eEHXP0JYXrBrjH5c",
   "id"=>"AK1vqjn1eEHXP0JYXrBrjH5c",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-1jlJCdGZjRWWYRF1iLBR69xwqG2NdQifv"},
 @hyperlinks={}>

% endif
