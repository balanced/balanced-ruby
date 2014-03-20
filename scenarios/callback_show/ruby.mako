% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

callback = Balanced::Callback.fetch('/callbacks/CB6X0CIZ60usYCaBAazlT8VG')
% elif mode == 'response':
#<Balanced::Callback:0x007fbaa4a60f98
 @attributes=
  {"href"=>"/callbacks/CB6X0CIZ60usYCaBAazlT8VG",
   "id"=>"CB6X0CIZ60usYCaBAazlT8VG",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
