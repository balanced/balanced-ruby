% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fefdcb08230
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
     #<Proc:0x007fefdcb02a38/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fefdcb01480/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fefdcaf26d8/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fefdcaf0bf8/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fefdcae8c00/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fefdcad8a58/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fefdcad88a0
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
     #<Proc:0x007fefdcabbc28/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fefdcaba6e8/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fefdcab16b0/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fefdcab0738/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fefdcaa8790/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fefdcaa1d50/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
