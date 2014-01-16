% if mode == 'definition':
Balanced::ApiKey.find
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::ApiKey.find('/api_keys/AK295hFPGxrDCzvr09WnqDUe')
% elif mode == 'response':
#<Balanced::ApiKey:0x1074f79e8
 @attributes=
  {"created_at"=>"2014-01-16T19:56:23.205376Z",
   "meta"=>{},
   "links"=>{},
   "href"=>"/api_keys/AK295hFPGxrDCzvr09WnqDUe",
   "id"=>"AK295hFPGxrDCzvr09WnqDUe"},
 @hyperlinks={}>

% endif
