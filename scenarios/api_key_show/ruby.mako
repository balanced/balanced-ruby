% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card = Balanced::ApiKey.fetch('/api_keys/AK2TWX3j6gK68Qk8w4ZEqfmM')
% elif mode == 'response':
#<Balanced::ApiKey:0x10882c720
 @attributes=
  {"links"=>{},
   "meta"=>{},
   "created_at"=>"2014-01-24T17:53:03.663488Z",
   "href"=>"/api_keys/AK2TWX3j6gK68Qk8w4ZEqfmM",
   "id"=>"AK2TWX3j6gK68Qk8w4ZEqfmM"},
 @hyperlinks={}>

% endif
