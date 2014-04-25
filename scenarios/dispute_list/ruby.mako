% if mode == 'definition':
Balanced::Dispute.all
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

disputes = Balanced::Dispute.all
% elif mode == 'response':
[#<Balanced::Dispute:0x007fa93eaad108
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-04-25T20:18:33.022136Z",
    "currency"=>"USD",
    "href"=>"/disputes/DT61IA2iRqyYBLqUCJNt5XNV",
    "id"=>"DT61IA2iRqyYBLqUCJNt5XNV",
    "initiated_at"=>"2014-04-25T20:10:26.554057Z",
    "links"=>{"transaction"=>"WD4YCKAyFrQBFYuFCUCRynOx"},
    "meta"=>{},
    "reason"=>"fraud",
    "respond_by"=>"2014-05-25T20:10:26.554061Z",
    "status"=>"pending",
    "updated_at"=>"2014-04-25T20:18:33.022139Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x007fa93eaa6f60/lib/balanced/utils.rb:6 (lambda)>,
    "transaction"=>
     #<Proc:0x007fa93eaa54d0/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
