% if mode == 'definition':
Balanced::Debit.dispute
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

debit = Balanced::Debit.fetch('/debits/WDJ66VlXnDyDx5AS5uplxyt')
dispute = debit.dispute

% elif mode == 'response':
#<Balanced::Dispute:0x007fb60b3c8a48
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-04-25T22:08:34.942433Z",
   "currency"=>"USD",
   "href"=>"/disputes/DT180PABUUjnj5wdE2pcwXQD",
   "id"=>"DT180PABUUjnj5wdE2pcwXQD",
   "initiated_at"=>"2014-04-25T22:01:03.776574Z",
   "links"=>{"transaction"=>"WDJ66VlXnDyDx5AS5uplxyt"},
   "meta"=>{},
   "reason"=>"fraud",
   "respond_by"=>"2014-05-25T22:01:03.776578Z",
   "status"=>"pending",
   "updated_at"=>"2014-04-25T22:08:34.942442Z"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x007fb60b3c5898/lib/balanced/utils.rb:6 (lambda)>,
   "transaction"=>
    #<Proc:0x007fb60b3c27b0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
