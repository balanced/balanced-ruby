% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fdc9d24a140
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
     #<Proc:0x007fdc9d248f70/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fdc9d240410/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fdc9d242058/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fdc9d2413d8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fdc9d23bb68/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fdc9d2391d8/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fdc9d239188
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-01-27T22:56:45.623268Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD2iSCukjXyeRdkvX3cW0PmC",
    "id"=>"WD2iSCukjXyeRdkvX3cW0PmC",
    "links"=>
     {"customer"=>"CU1f8Ygc4t0F2FKNcw235x9I",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC2abDOQVm5aNFhHpcRvWS02"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W744-719-1832",
    "updated_at"=>"2014-01-27T22:56:47.926021Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fdc9d233120/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fdc9d231a00/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fdc9d22b380/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fdc9d22a930/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fdc9d222488/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fdc9d222550/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
