% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fa4e315f920
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-03-06T19:23:01.594300Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD5PTwr2bwJLIyJio1pEpYBr",
    "id"=>"WD5PTwr2bwJLIyJio1pEpYBr",
    "links"=>
     {"customer"=>nil,
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC5Buki6e4Kg4bDVZ3OSfQ8O"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W986-715-3969",
    "updated_at"=>"2014-03-06T19:23:02.987552Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa4e315a498/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa4e3151b90/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa4e3132c68/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa4e3129ed8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa4e311b928/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa4e3109200/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fa4e3108f08
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "created_at"=>"2014-03-06T19:22:49.584629Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD5Co9XwRZJg1QtvC5QeekhX",
    "id"=>"WD5Co9XwRZJg1QtvC5QeekhX",
    "links"=>
     {"customer"=>"CU4Wt8xSbREzV2NWtdVAFGeR",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC5nCSU0yFp3qxR4p6UZST7y"},
    "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
    "status"=>"succeeded",
    "transaction_number"=>"W493-697-4873",
    "updated_at"=>"2014-03-06T19:22:50.608819Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa4e30fb510/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa4e30e8708/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa4e30dbaf8/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa4e30d9988/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa4e30ca5a0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa4e30ba9e8/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
