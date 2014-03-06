% if mode == 'definition':
Balanced::CardHold.void

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4fmk2370zAE7nAVujKxjtf')
card_hold.void
% elif mode == 'response':
#<Balanced::CardHold:0x1066c7d28
 @attributes=
  {"status"=>"succeeded",
   "voided_at"=>"2014-03-05T23:26:09.634528Z",
   "links"=>{"debit"=>nil, "card"=>"CC3ZsWHP2jMgvFrrzDzfZS0q"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:26:08.860551Z",
   "href"=>"/card_holds/HL4fmk2370zAE7nAVujKxjtf",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "amount"=>5000,
   "transaction_number"=>"HL299-976-7990",
   "id"=>"HL4fmk2370zAE7nAVujKxjtf",
   "failure_reason_code"=>nil,
   "expires_at"=>"2014-03-12T23:26:09.014221Z",
   "updated_at"=>"2014-03-05T23:26:09.634525Z",
   "meta"=>{},
   "failure_reason"=>nil},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
