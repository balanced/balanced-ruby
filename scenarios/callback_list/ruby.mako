% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x007ff2bd9948e8
  @attributes=
   {"href"=>"/callbacks/CB5pnz4XnaDpRFGlNMb6u50R",
    "id"=>"CB5pnz4XnaDpRFGlNMb6u50R",
    "links"=>{},
    "method"=>"post",
    "revision"=>"1.1",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
