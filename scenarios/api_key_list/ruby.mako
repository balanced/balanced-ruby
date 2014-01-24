% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x108864620
  @attributes=
   {"links"=>{},
    "meta"=>{},
    "created_at"=>"2014-01-24T17:53:03.663488Z",
    "href"=>"/api_keys/AK2TWX3j6gK68Qk8w4ZEqfmM",
    "id"=>"AK2TWX3j6gK68Qk8w4ZEqfmM"},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x108863c20
  @attributes=
   {"links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I",
    "created_at"=>"2014-01-24T17:52:53.304483Z",
    "href"=>"/api_keys/AK2Ii1LeK3SbxF4y6A5f3hK6",
    "id"=>"AK2Ii1LeK3SbxF4y6A5f3hK6"},
  @hyperlinks={}>]

% endif
