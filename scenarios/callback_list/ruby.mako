% if mode == 'definition':
Balanced::Callback.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

callbacks = Balanced::Callback.all
% elif mode == 'response':
[#<Balanced::Callback:0x007fb60b35e468
  @attributes=
   {"href"=>"/callbacks/CB7DP9sW9wRe19dFRutynahb",
    "id"=>"CB7DP9sW9wRe19dFRutynahb",
    "links"=>{},
    "method"=>"post",
    "revision"=>"1.1",
    "url"=>"http://www.example.com/callback"},
  @hyperlinks={}>]

% endif
