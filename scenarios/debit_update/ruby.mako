% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

debit = Balanced::Debit.fetch('/debits/WD4GV5z2pEIRZ9cBSuyuykQx')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d3452d38
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-05-15T00:41:07.283881Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4GV5z2pEIRZ9cBSuyuykQx",
   "id"=>"WD4GV5z2pEIRZ9cBSuyuykQx",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4xXVOyMBDdk7FtzG9HwtBv"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W235-372-7348",
   "updated_at"=>"2014-05-15T00:41:44.238176Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d3451078/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d3450560/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d310a5b8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d3109b68/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d3103c40/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d3102070/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
