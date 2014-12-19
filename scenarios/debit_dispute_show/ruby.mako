% if mode == 'definition':
Balanced::Debit.dispute
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

debit = Balanced::Debit.fetch('/debits/WD7M75BRYlRsQTImIHFf8O9W')
dispute = debit.dispute

% elif mode == 'response':
#<Balanced::Dispute:0x007fcde08a0718
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
    #<Proc:0x007fcde088ab70/lib/balanced/utils.rb:6 (lambda)>,
   "transaction"=>
    #<Proc:0x007fcde0851690/lib/balanced/resources/resource.rb:56 (lambda)>}>

% endif
