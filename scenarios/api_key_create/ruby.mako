% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x10754cba0
 @attributes=
  {"created_at"=>"2014-01-16T19:56:23.205376Z",
   "meta"=>{},
   "links"=>{},
   "href"=>"/api_keys/AK295hFPGxrDCzvr09WnqDUe",
   "secret"=>"ak-test-2boLPsAiHRGEwckJyj2m8ciFZZ5HKq3xw",
   "id"=>"AK295hFPGxrDCzvr09WnqDUe"},
 @hyperlinks={}>

% endif
