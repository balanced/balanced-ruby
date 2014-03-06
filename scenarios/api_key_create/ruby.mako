% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x1061b2388
 @attributes=
  {"links"=>{},
   "created_at"=>"2014-03-05T23:25:38.010269Z",
   "href"=>"/api_keys/AK3zUFsQ8aJ3aae9ZylavXLp",
   "secret"=>"ak-test-L4Cs4roaWqT6O5EllIqqFQIiT8YB923X",
   "id"=>"AK3zUFsQ8aJ3aae9ZylavXLp",
   "meta"=>{}},
 @hyperlinks={}>

% endif
