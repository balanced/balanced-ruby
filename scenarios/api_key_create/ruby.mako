% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fa0e19efbb8
 @attributes=
  {"created_at"=>"2014-11-14T19:26:45.904618Z",
   "href"=>"/api_keys/AKJnLWedoBhUHpdhoGEOPew",
   "id"=>"AKJnLWedoBhUHpdhoGEOPew",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-2xP79D9WIwTI77JPABpo8uL8cqgEFq2c"},
 @hyperlinks={}>

% endif
