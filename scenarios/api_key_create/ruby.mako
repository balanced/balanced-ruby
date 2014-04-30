% if mode == 'definition':
Balanced::ApiKey.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

key = Balanced::ApiKey.new.save

% elif mode == 'response':
#<Balanced::ApiKey:0x007fb60b89fb48
 @attributes=
  {"created_at"=>"2014-04-25T21:59:54.024155Z",
   "href"=>"/api_keys/AK7gg5FNb0Owb6hErcMm0CZ7",
   "id"=>"AK7gg5FNb0Owb6hErcMm0CZ7",
   "links"=>{},
   "meta"=>{},
   "secret"=>"ak-test-2ouh9CXrssudvHruEZ1Ymcrna05kmigfw"},
 @hyperlinks={}>

% endif
