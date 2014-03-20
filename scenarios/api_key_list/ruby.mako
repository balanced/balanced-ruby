% if mode == 'definition':
Balanced::ApiKey.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

card = Balanced::ApiKey.all

% elif mode == 'response':
[#<Balanced::ApiKey:0x007fbaa58059f0
  @attributes=
   {"created_at"=>"2014-03-20T18:17:03.149237Z",
    "href"=>"/api_keys/AK6vYazRHYGP5Tiqeuo9kMUq",
    "id"=>"AK6vYazRHYGP5Tiqeuo9kMUq",
    "links"=>{},
    "meta"=>{}},
  @hyperlinks={}>,
 #<Balanced::ApiKey:0x007fbaa5805838
  @attributes=
   {"created_at"=>"2014-03-20T18:16:55.062836Z",
    "href"=>"/api_keys/AK6mSe4H7R4p4zG3z4QMKfIO",
    "id"=>"AK6mSe4H7R4p4zG3z4QMKfIO",
    "links"=>{},
    "meta"=>{},
    "secret"=>"ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1"},
  @hyperlinks={}>]

% endif
