% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x107509670
  @attributes=
   {"transaction_number"=>"HL158-440-0378",
    "failure_reason_code"=>nil,
    "currency"=>"USD",
    "created_at"=>"2014-01-16T19:56:47.739259Z",
    "meta"=>{},
    "links"=>{"card"=>"CC2zLkKYc57B1SMT5i13W63m", "debit"=>nil},
    "href"=>"/card_holds/HL2AG5YIRZsWCFh5NwigrvJg",
    "failure_reason"=>nil,
    "description"=>"Some descriptive text for the debit in the dashboard",
    "id"=>"HL2AG5YIRZsWCFh5NwigrvJg",
    "amount"=>5000,
    "updated_at"=>"2014-01-16T19:56:48.012890Z",
    "expires_at"=>"2014-01-23T19:56:47.878623Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card"=>#<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
    "debits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::CardHold:0x1074f0c10
  @attributes=
   {"transaction_number"=>"HL615-739-8767",
    "failure_reason_code"=>nil,
    "currency"=>"USD",
    "created_at"=>"2014-01-16T19:56:20.973970Z",
    "meta"=>{},
    "links"=>
     {"card"=>"CC25xvCkpij4EwZLv2Xd61n4", "debit"=>"WD26IBRBGRZcVYCnF9JJsJUr"},
    "href"=>"/card_holds/HL26BjfF7fE4YqZ4Nvdumba7",
    "failure_reason"=>nil,
    "description"=>nil,
    "id"=>"HL26BjfF7fE4YqZ4Nvdumba7",
    "amount"=>10000000,
    "updated_at"=>"2014-01-16T19:56:22.395415Z",
    "expires_at"=>"2014-01-23T19:56:21.622911Z"},
  @hyperlinks=
   {"events"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "card"=>#<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
    "debits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debit"=>
     #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>}>]

% endif
