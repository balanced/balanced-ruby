% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

debit = Balanced::Debit.fetch('/debits/WD4vEUJj36IpPHTnLKMYzHgh')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fa6d2526338
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-25T20:09:59.895549Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD4vEUJj36IpPHTnLKMYzHgh",
   "id"=>"WD4vEUJj36IpPHTnLKMYzHgh",
   "links"=>
    {"customer"=>"CU3VYCUIfwngJsidJWdGw2W5",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC4tvKLTKXcBJAgkGvPEW58N"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W296-328-8320",
   "updated_at"=>"2014-04-25T20:10:19.169392Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa6d2524768/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa6d251fd80/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa6d251de68/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa6d251d468/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa6d2517400/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa6d2515a10/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
