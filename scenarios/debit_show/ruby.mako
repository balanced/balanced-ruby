% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

debit = Balanced::Debit.fetch('/debits/WD4GV5z2pEIRZ9cBSuyuykQx')

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d4196bc0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-05-15T00:41:07.283881Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4GV5z2pEIRZ9cBSuyuykQx",
   "id"=>"WD4GV5z2pEIRZ9cBSuyuykQx",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4xXVOyMBDdk7FtzG9HwtBv"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W235-372-7348",
   "updated_at"=>"2014-05-15T00:41:11.755100Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d4195068/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d4194460/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d40a65d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d40a5bd0/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d4043d40/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d40423c8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
