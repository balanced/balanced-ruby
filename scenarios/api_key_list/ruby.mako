% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fa7d409cc10
  @attributes=
   {"created_at"=>"2014-05-15T00:38:16.692063Z",
    "href"=>"/api_keys/AK1B3lNyPQ63pRQa1JDC5os5",
    "id"=>"AK1B3lNyPQ63pRQa1JDC5os5",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fa7d409ca58
  @attributes=
   {"created_at"=>"2014-05-15T00:38:03.172007Z",
    "href"=>"/api_keys/AK1lQQL8kjXl6bLc7VE4wkUV",
    "id"=>"AK1lQQL8kjXl6bLc7VE4wkUV",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp"},
  @hyperlinks={}>]

% endif
