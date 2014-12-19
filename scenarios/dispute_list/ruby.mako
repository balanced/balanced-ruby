% if mode == 'definition':
Balanced::Dispute.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

disputes = Balanced::Dispute.all
% elif mode == 'response':
[#<Balanced::Dispute:0x007fcde190c9f8
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-12-17T21:25:45.321785Z",
    "currency"=>"USD",
    "href"=>"/disputes/DTbbQLxrNf790FmaKsgqRPa",
    "id"=>"DTbbQLxrNf790FmaKsgqRPa",
    "initiated_at"=>"2014-12-17T21:23:52.616968Z",
    "links"=>{"transaction"=>"WD7M75BRYlRsQTImIHFf8O9W"},
    "meta"=>{},
    "reason"=>"fraud",
    "respond_by"=>"2015-01-16T21:23:52.616970Z",
    "status"=>"pending",
    "updated_at"=>"2014-12-17T21:25:45.321787Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x007fcde1916a48/lib/balanced/utils.rb:6 (lambda)>,
    "transaction"=>
     #<Proc:0x007fcde19150a8/lib/balanced/resources/resource.rb:56 (lambda)>}>]

% endif
