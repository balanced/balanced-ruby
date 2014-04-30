% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

debit = Balanced::Debit.fetch('/debits/WDh5j4t3Rkh7oeONR9Izy61')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fb60b32a078
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T22:00:38.385908Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDh5j4t3Rkh7oeONR9Izy61",
   "id"=>"WDh5j4t3Rkh7oeONR9Izy61",
   "links"=>
    {"customer"=>"CU7yCmXG2RxyyIkcHG3SIMUF",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCf1fF6z2RjwvniinUVefhb"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W249-399-4192",
   "updated_at"=>"2014-04-25T22:00:57.649072Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb60b2f6728/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb60b2f5918/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb60a8f6a70/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb60a8f5c88/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb60a8f2830/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb60a8efb80/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
