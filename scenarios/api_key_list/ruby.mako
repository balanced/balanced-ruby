% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x10752ceb8
  @attributes=
   {"created_at"=>"2014-01-16T19:56:23.205376Z",
    "meta"=>{},
    "links"=>{},
    "href"=>"/api_keys/AK295hFPGxrDCzvr09WnqDUe",
    "id"=>"AK295hFPGxrDCzvr09WnqDUe"},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x10752b838
  @attributes=
   {"created_at"=>"2014-01-16T19:56:17.226674Z",
    "meta"=>{},
    "links"=>{},
    "href"=>"/api_keys/AK22mn8om7Ugq5yJ63AlvfRM",
    "secret"=>"ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6",
    "id"=>"AK22mn8om7Ugq5yJ63AlvfRM"},
  @hyperlinks={}>]

% endif
