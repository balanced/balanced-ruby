% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x1061980f0
  @attributes=
   {"links"=>{},
    "created_at"=>"2014-03-05T23:25:38.010269Z",
    "href"=>"/api_keys/AK3zUFsQ8aJ3aae9ZylavXLp",
    "id"=>"AK3zUFsQ8aJ3aae9ZylavXLp",
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x106197808
  @attributes=
   {"links"=>{},
    "created_at"=>"2014-03-05T23:25:33.332043Z",
    "href"=>"/api_keys/AK3uEJynPdwB05TB04ND2FEi",
    "secret"=>"ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB",
    "id"=>"AK3uEJynPdwB05TB04ND2FEi",
    "meta"=>{}},
  @hyperlinks={}>]

% endif
