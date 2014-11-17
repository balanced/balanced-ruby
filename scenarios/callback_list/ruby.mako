% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x007fa0e13f9628
  @attributes=
   {"href"=>"/callbacks/CB2xCnObyAUU1V658GVuRyCI",
    "id"=>"CB2xCnObyAUU1V658GVuRyCI",
    "links"=>{},
    "method"=>"post",
    "revision"=>"1.1",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
