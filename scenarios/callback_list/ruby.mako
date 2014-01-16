% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x107422108
  @attributes=
   {"links"=>{},
    "href"=>"/callbacks/CB2uhOJVNLDsih7fq0nq4ppm",
    "revision"=>"1.1",
    "method"=>"post",
    "id"=>"CB2uhOJVNLDsih7fq0nq4ppm",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
