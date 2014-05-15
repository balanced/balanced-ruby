% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fa7d40b53a0
 @attributes=
  {"created_at"=>"2014-05-15T00:38:16.692063Z",
   "href"=>"/api_keys/AK1B3lNyPQ63pRQa1JDC5os5",
   "id"=>"AK1B3lNyPQ63pRQa1JDC5os5",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-1GkkDibAyqrZDI1LDfepJSuUqKbSUnqA5"},
 @hyperlinks={}>

% endif
