% if mode == 'definition':
Balanced::Debit.dispute
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

debit = Balanced::Debit.fetch('/debits/WD6mairBakAx5t8ETjMYFu7T')
dispute = debit.dispute

% elif mode == 'response':
#<Balanced::Dispute:0x007fa7d1a071e0
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
    #<Proc:0x007fa7d19fe0b8/lib/balanced/utils.rb:6 (lambda)>,
   "transaction"=>
    #<Proc:0x007fa7d19f6ae8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
