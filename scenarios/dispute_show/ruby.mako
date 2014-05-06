% if mode == 'definition':
Balanced::Dispute.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

dispute = Balanced::Dispute.fetch('/disputes/DT180PABUUjnj5wdE2pcwXQD')

% elif mode == 'response':
#<Balanced::Dispute:0x007fb60a8a65e8
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
    #<Proc:0x007fb60b26a598/lib/balanced/utils.rb:6 (lambda)>,
   "transaction"=>
    #<Proc:0x007fb60b267ff0/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
