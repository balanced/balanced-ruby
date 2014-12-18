% if mode == 'definition':
Balanced::Account.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

account = Balanced::Account.fetch('/accounts/AT61AkTlbK0xOgK0M85qbMJO')

% elif mode == 'response':
#<Balanced::Account:0x007fcde1349d68
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
    #<Proc:0x007fcde1353d18/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fcde1352378/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde1350528/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fcde135a640/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fcde13587c8/lib/balanced/utils.rb:6 (lambda)>,
   "settlements"=>
    #<Proc:0x007fcde1362908/lib/balanced/utils.rb:6 (lambda)>}>

% endif
