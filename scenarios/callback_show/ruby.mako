% if mode == 'definition':
Balanced::Callback.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

callback = Balanced::Callback.find('/callbacks/CB2uhOJVNLDsih7fq0nq4ppm')
% elif mode == 'response':
#<Balanced::Callback:0x10740cd80
 @attributes=
  {"links"=>{},
   "href"=>"/callbacks/CB2uhOJVNLDsih7fq0nq4ppm",
   "revision"=>"1.1",
   "method"=>"post",
   "id"=>"CB2uhOJVNLDsih7fq0nq4ppm",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
