% if mode == 'definition':
Balanced::Dispute.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

disputes = Balanced::Dispute.all
% elif mode == 'response':
[#<Balanced::Dispute:0x007fa7d30e1230
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-05-15T00:42:52.610582Z",
    "currency"=>"USD",
    "href"=>"/disputes/DT6BoisMcacTIu3QWX32JVtl",
    "id"=>"DT6BoisMcacTIu3QWX32JVtl",
    "initiated_at"=>"2014-05-15T00:42:41.973330Z",
    "links"=>{"transaction"=>"WD6mairBakAx5t8ETjMYFu7T"},
    "meta"=>{},
    "reason"=>"fraud",
    "respond_by"=>"2014-06-14T00:42:41.973334Z",
    "status"=>"pending",
    "updated_at"=>"2014-05-15T00:42:52.610592Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x007fa7d30daef8/lib/balanced/utils.rb:6 (lambda)>,
    "transaction"=>
     #<Proc:0x007fa7d30d93a0/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
