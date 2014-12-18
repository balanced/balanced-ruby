% if mode == 'definition':
Balanced::Account.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

Balanced::Account.all

% elif mode == 'response':
[#<Balanced::Account:0x007fcde12cb378
  @attributes=
   {"balance"=>0,
    "can_credit"=>true,
    "can_debit"=>true,
    "created_at"=>"2014-12-17T21:23:58.053807Z",
    "currency"=>"USD",
    "href"=>"/accounts/AT61AkTlbK0xOgK0M85qbMJO",
    "id"=>"AT61AkTlbK0xOgK0M85qbMJO",
    "links"=>{"customer"=>"CU61tZf6xgGgpLmoNkXHfSOQ"},
    "meta"=>{},
    "type"=>"payable",
    "updated_at"=>"2014-12-17T21:23:58.053810Z"},
  @hyperlinks=
   {"credits"=>
     #<Proc:0x007fcde12c9348/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde12d3960/lib/balanced/resources/resource.rb:56 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde12d1b10/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde12dbc50/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde12d9dd8/lib/balanced/utils.rb:6 (lambda)>,
    "settlements"=>
     #<Proc:0x007fcde12e3ef0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Account:0x007fcde12e3ea0
  @attributes=
   {"balance"=>0,
    "can_credit"=>true,
    "can_debit"=>true,
    "created_at"=>"2014-12-17T21:23:57.406645Z",
    "currency"=>"USD",
    "href"=>"/accounts/AT60Eh7L4WodxuKzzN5LW4tG",
    "id"=>"AT60Eh7L4WodxuKzzN5LW4tG",
    "links"=>{"customer"=>"CU60xqwNwAzX21Qg0dddDDvG"},
    "meta"=>{},
    "type"=>"payable",
    "updated_at"=>"2014-12-17T21:23:57.406647Z"},
  @hyperlinks=
   {"credits"=>
     #<Proc:0x007fcde12e1ec0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde12e0520/lib/balanced/resources/resource.rb:56 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde12ea6b0/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fcde12e8860/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde12f29c8/lib/balanced/utils.rb:6 (lambda)>,
    "settlements"=>
     #<Proc:0x007fcde12f0b78/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
