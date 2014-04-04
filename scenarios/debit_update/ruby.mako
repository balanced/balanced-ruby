% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

debit = Balanced::Debit.fetch('/debits/WDx4mKqQWmCevBueqfMcxoO')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fc09e1cbd60
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-01T16:38:46.197439Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDx4mKqQWmCevBueqfMcxoO",
   "id"=>"WDx4mKqQWmCevBueqfMcxoO",
   "links"=>
    {"customer"=>"CUb38G1IRIovbbaJlMMKUqG",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCHv1QwjLfCxskorXDf8bmm"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W620-466-3407",
   "updated_at"=>"2014-04-01T16:39:06.813312Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fc09e1ca2d0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fc09e1c9948/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fc09e1d3b50/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09e1d3178/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fc09e1d13c8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fc09e1dbaa8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
