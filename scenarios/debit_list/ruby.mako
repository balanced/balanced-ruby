% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fcde197e940
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-12-17T21:25:24.286272Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD7AAkAyeN6YTeHJTn1ThPYA",
    "id"=>"WD7AAkAyeN6YTeHJTn1ThPYA",
    "links"=>
     {"card_hold"=>"HL7Az4UI0XU8rHAqmNY0Snp6",
      "customer"=>nil,
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC73IyzxPUu2z89NH8GrJhLn"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"WDQN-HJW-1YIP",
    "updated_at"=>"2014-12-17T21:25:25.027834Z"},
  @hyperlinks=
   {"card_hold"=>
     #<Proc:0x007fcde197ce10/lib/balanced/resources/resource.rb:56 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde197c488/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fcde09abb08/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fcde09a9c40/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde09a91f0/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde09bb3a0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fcde09b9a28/lib/balanced/resources/resource.rb:56 (lambda)>}>,
 #<Balanced::Debit:0x007fcde09b99d8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*example.com",
    "created_at"=>"2014-12-17T21:25:04.086780Z",
    "currency"=>"USD",
    "description"=>"Order #12341234",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD7dRwgfkmvirShpxn7JA8JL",
    "id"=>"WD7dRwgfkmvirShpxn7JA8JL",
    "links"=>
     {"card_hold"=>"HL7dQKkSsFJpaZppKe2pB4TX",
      "customer"=>nil,
      "dispute"=>nil,
      "order"=>"OR6c6n11zKSFfjE6kGNKtsE8",
      "source"=>"CC73IyzxPUu2z89NH8GrJhLn"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"WG9L-4UP-ZQQN",
    "updated_at"=>"2014-12-17T21:25:04.922248Z"},
  @hyperlinks=
   {"card_hold"=>
     #<Proc:0x007fcde09cbe58/lib/balanced/resources/resource.rb:56 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde09cb4d0/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fcde09cab48/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fcde09c8d20/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde09d3310/lib/balanced/resources/resource.rb:56 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde09d14e8/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fcde09dbb28/lib/balanced/resources/resource.rb:56 (lambda)>}>]

% endif
