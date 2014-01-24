% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x10887e570
 @attributes=
  {"links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-1pZph6JTpqVXlARGXWJFmmq8ZcLoKu8zn",
   "created_at"=>"2014-01-24T17:53:03.663488Z",
   "href"=>"/api_keys/AK2TWX3j6gK68Qk8w4ZEqfmM",
   "id"=>"AK2TWX3j6gK68Qk8w4ZEqfmM"},
 @hyperlinks={}>

% endif
