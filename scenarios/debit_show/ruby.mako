% if mode == 'definition':
Balanced::Debit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

debit = Balanced::Debit.fetch('/debits/WD2Fd3jVcMZEWyXHtG3U1LRM')

% elif mode == 'response':
#<Balanced::Debit:0x007fdc9d1e3058
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-01-27T22:57:05.511023Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2Fd3jVcMZEWyXHtG3U1LRM",
   "id"=>"WD2Fd3jVcMZEWyXHtG3U1LRM",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC2uc8iPDjgyxOXHVtnZloyI"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W906-153-1439",
   "updated_at"=>"2014-01-27T22:57:10.153696Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fdc9d1e1e10/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9d1e1320/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9d1db8d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9d1dac28/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9d1d8770/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fdc9d1d2e88/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
