% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x10732e558
  @attributes=
   {"transaction_number"=>"W268-408-3709",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"BAL*Statement text",
    "currency"=>"USD",
    "created_at"=>"2014-01-16T19:57:05.762586Z",
    "meta"=>{},
    "links"=>
     {"customer"=>nil, "order"=>nil, "source"=>"CC2O5c4KrZSiyV7eFPGySXtd"},
    "href"=>"/debits/WD2UWAyQO5m1zFzbiiZV2V6o",
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "id"=>"WD2UWAyQO5m1zFzbiiZV2V6o",
    "amount"=>5000,
    "updated_at"=>"2014-01-16T19:57:06.906750Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "order"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
    "refunds"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Debit:0x1072fab18
  @attributes=
   {"transaction_number"=>"W096-739-8629",
    "failure_reason_code"=>nil,
    "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
    "currency"=>"USD",
    "created_at"=>"2014-01-16T19:56:53.502811Z",
    "meta"=>{"meaningful.key"=>"some.value", "holding.for"=>"user1"},
    "links"=>
     {"customer"=>"CU22SmWz4KC95LEGPRZWXqtp",
      "order"=>nil,
      "source"=>"CC2zLkKYc57B1SMT5i13W63m"},
    "href"=>"/debits/WD2H9NxmLiyCiAgTye0BsBui",
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "id"=>"WD2H9NxmLiyCiAgTye0BsBui",
    "amount"=>5000,
    "updated_at"=>"2014-01-16T19:56:54.469861Z",
    "status"=>"succeeded"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
    "order"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "source"=>
     #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
    "refunds"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
