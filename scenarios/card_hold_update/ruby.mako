% if mode == 'definition':
Balanced::CardHold.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

card_hold = Balanced::CardHold.fetch('/card_holds/HL6RKKEl9zNhtZGgnZaElcwU')
card_hold.description = 'update this description'
card_hold.meta = {
    'holding.for' => 'user1',
    'meaningful.key' => 'some.value'
}
card_hold.save

% elif mode == 'response':
#<Balanced::CardHold:0x007fcde1359ab0
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-12-17T21:24:44.413118Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "expires_at"=>"2014-12-24T21:24:44.632300Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HL6RKKEl9zNhtZGgnZaElcwU",
   "id"=>"HL6RKKEl9zNhtZGgnZaElcwU",
   "links"=>{"card"=>"CC6buB6OEtiIf7DMIKzpJ7k9", "debit"=>nil, "order"=>nil},
   "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
   "status"=>"succeeded",
   "transaction_number"=>"HL1YW-4PE-JOHZ",
   "updated_at"=>"2014-12-17T21:24:48.351903Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fcde1363f38/lib/balanced/resources/resource.rb:56 (lambda)>,
   "debit"=>
    #<Proc:0x007fcde13635b0/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fcde1361670/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fcde136b6c0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fcde136ad10/lib/balanced/utils.rb:6 (lambda)>}>

% endif
