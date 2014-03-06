% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::ApiKey.fetch('/api_keys/AK3zUFsQ8aJ3aae9ZylavXLp')
% elif mode == 'response':
#<Balanced::ApiKey:0x1061698b8
 @attributes=
  {"links"=>{},
   "created_at"=>"2014-03-05T23:25:38.010269Z",
   "href"=>"/api_keys/AK3zUFsQ8aJ3aae9ZylavXLp",
   "id"=>"AK3zUFsQ8aJ3aae9ZylavXLp",
   "meta"=>{}},
 @hyperlinks={}>

% endif
