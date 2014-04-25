% if mode == 'definition':
Balanced::Debit.dispute
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

debit = Balanced::Debit.fetch('/debits/WD4YCKAyFrQBFYuFCUCRynOx')
dispute = debit.dispute

% elif mode == 'response':
#<Balanced::Dispute:0x007fa93ebf4d68
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
    #<Proc:0x007fa93ebfecc8/lib/balanced/utils.rb:6 (lambda)>,
   "transaction"=>
    #<Proc:0x007fa93ebfd328/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
