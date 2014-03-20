% if mode == 'definition':
Balanced::Callback.new
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

callback = Balanced::Callback.new(
  :method => 'post',
  :url => 'http://www.example.com/callback'
).save

% elif mode == 'response':
#<Balanced::Callback:0x007fbaa5867268
 @attributes=
  {"href"=>"/callbacks/CB6X0CIZ60usYCaBAazlT8VG",
   "id"=>"CB6X0CIZ60usYCaBAazlT8VG",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
