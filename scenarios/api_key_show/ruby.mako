% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::ApiKey.fetch('/api_keys/AK1B3lNyPQ63pRQa1JDC5os5')
% elif mode == 'response':
#<Balanced::ApiKey:0x007fa7d4086aa0
 @attributes=
  {"created_at"=>"2014-05-15T00:38:16.692063Z",
   "href"=>"/api_keys/AK1B3lNyPQ63pRQa1JDC5os5",
   "id"=>"AK1B3lNyPQ63pRQa1JDC5os5",
   "links"=>{},
   "meta"=>{}},
 @hyperlinks={}>

% endif
