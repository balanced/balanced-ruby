% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fdc9d2bcbc8
  @attributes=
   {"created_at"=>"2014-01-27T22:56:01.641736Z",
    "href"=>"/api_keys/AK1vqjn1eEHXP0JYXrBrjH5c",
    "id"=>"AK1vqjn1eEHXP0JYXrBrjH5c",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fdc9d2bc948
  @attributes=
   {"created_at"=>"2014-01-27T22:55:46.698536Z",
    "href"=>"/api_keys/AK1eDKn7B8vK70hj70S1NMbu",
    "id"=>"AK1eDKn7B8vK70hj70S1NMbu",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc"},
  @hyperlinks={}>]

% endif
