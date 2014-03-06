% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x10dda4090
  @attributes=
   {"links"=>{},
    "created_at"=>"2014-03-05T23:25:38.010269Z",
    "id"=>"AK3zUFsQ8aJ3aae9ZylavXLp",
    "href"=>"/api_keys/AK3zUFsQ8aJ3aae9ZylavXLp",
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x10dda2600
  @attributes=
   {"links"=>{},
    "secret"=>"ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB",
    "created_at"=>"2014-03-05T23:25:33.332043Z",
    "id"=>"AK3uEJynPdwB05TB04ND2FEi",
    "href"=>"/api_keys/AK3uEJynPdwB05TB04ND2FEi",
    "meta"=>{}},
  @hyperlinks={}>]

% endif
