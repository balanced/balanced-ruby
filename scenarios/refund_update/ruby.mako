% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

refund = Balanced::Refund.fetch('/refunds/RF5c71x7GALUPPdyexP4Weca')
refund.description = 'update this description'
refund.meta = {
    'user.refund.count' => '3',
    'user.notes' => 'very polite on the phone',
    'refund.reason' => 'user not happy with product'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x1067a0920
 @attributes=
  {"status"=>"succeeded",
   "links"=>
    {"debit"=>"WD57kmfV9Cgc0MiZkHOmFU1z", "order"=>nil, "dispute"=>nil},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:26:58.437383Z",
   "href"=>"/refunds/RF5c71x7GALUPPdyexP4Weca",
   "description"=>"update this description",
   "amount"=>3000,
   "transaction_number"=>"RF145-678-0145",
   "id"=>"RF5c71x7GALUPPdyexP4Weca",
   "updated_at"=>"2014-03-05T23:27:03.196577Z",
   "meta"=>
    {"user.refund.count"=>"3",
     "user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product"}},
 @hyperlinks=
  {"debit"=>#<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "dispute"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>

% endif
