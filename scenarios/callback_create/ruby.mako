% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

callback = Balanced::Callback.new(
  :method => 'post',
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x007fefda31e468
 @attributes=
  {"href"=>"/callbacks/CB5pnz4XnaDpRFGlNMb6u50R",
   "id"=>"CB5pnz4XnaDpRFGlNMb6u50R",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
