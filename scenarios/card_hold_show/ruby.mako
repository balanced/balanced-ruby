% if mode == 'definition':
Balanced::CardHold.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card_hold = Balanced::CardHold.fetch('/card_holds/HL6RKKEl9zNhtZGgnZaElcwU')

% elif mode == 'response':
#<Balanced::CardHold:0x007fcde132a7d8
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-12-17T21:24:44.413118Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-12-24T21:24:44.632300Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL6RKKEl9zNhtZGgnZaElcwU",
   "id"=>"HL6RKKEl9zNhtZGgnZaElcwU",
   "links"=>{"card"=>"CC6buB6OEtiIf7DMIKzpJ7k9", "debit"=>nil, "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HL1YW-4PE-JOHZ",
   "updated_at"=>"2014-12-17T21:24:44.745782Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fcde1328ca8/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debit"=>
    #<Proc:0x007fcde1328320/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde1332370/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde1330408/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde133ba10/lib/balanced/utils.rb:6 (lambda)>}>

% endif
