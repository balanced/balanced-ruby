% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

callback = Balanced::Callback.fetch('/callbacks/CB224374R2NSyoYBpDV4r7C2')
% elif mode == 'response':
#<Balanced::Callback:0x007fdc9d10a618
 @attributes=
  {"href"=>"/callbacks/CB224374R2NSyoYBpDV4r7C2",
   "id"=>"CB224374R2NSyoYBpDV4r7C2",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
