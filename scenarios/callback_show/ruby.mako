% if mode == 'definition':
Balanced::Callback.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

callback = Balanced::Callback.fetch('/callbacks/CB7DP9sW9wRe19dFRutynahb')
% elif mode == 'response':
#<Balanced::Callback:0x007fb60b374b50
 @attributes=
  {"href"=>"/callbacks/CB7DP9sW9wRe19dFRutynahb",
   "id"=>"CB7DP9sW9wRe19dFRutynahb",
   "links"=>{},
   "method"=>"post",
   "revision"=>"1.1",
   "url"=>"http://www.example.com/callback"},
 @hyperlinks={}>

% endif
