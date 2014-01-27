% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

debit = Balanced::Debit.fetch('/debits/WD2Fd3jVcMZEWyXHtG3U1LRM')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fdc9d1b2750
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-01-27T22:57:05.511023Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2Fd3jVcMZEWyXHtG3U1LRM",
   "id"=>"WD2Fd3jVcMZEWyXHtG3U1LRM",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC2uc8iPDjgyxOXHVtnZloyI"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W906-153-1439",
   "updated_at"=>"2014-01-27T22:57:53.776191Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fdc9d1b1800/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9d1b0dd8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d1ab478/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9d1aa938/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9d1a85c0/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9d1a3228/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
