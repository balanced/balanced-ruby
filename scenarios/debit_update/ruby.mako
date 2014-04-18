% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

debit = Balanced::Debit.fetch('/debits/WDLlpoutDUH8fGfp28GeT0V')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fb794bd36b8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-04-17T22:39:24.996837Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WDLlpoutDUH8fGfp28GeT0V",
   "id"=>"WDLlpoutDUH8fGfp28GeT0V",
   "links"=>
    {"customer"=>"CUeXNjpejPooRtSnJLc6SRD",
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CCVkCgaysaNhZH3ITVLmQ9X"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W766-065-9952",
   "updated_at"=>"2014-04-17T22:39:44.848896Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fb794bcb6e8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fb794bcace8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fb794bc8b78/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fb794bc3df8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fb794bc1fa8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fb794bc0658/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
