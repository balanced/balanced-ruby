% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fbaa1c3da30
 @attributes=
  {"created_at"=>"2014-03-20T18:17:03.149237Z",
   "href"=>"/api_keys/AK6vYazRHYGP5Tiqeuo9kMUq",
   "id"=>"AK6vYazRHYGP5Tiqeuo9kMUq",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-12kjk5JAGdLnBI5OQY0DmKH3cfYFcwsYD"},
 @hyperlinks={}>

% endif
