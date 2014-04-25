% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

refund = Balanced::Refund.fetch('/refunds/RF4VbbS5LdgSxlECITkHg0Zf')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fa93b73c148
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-25T20:10:22.593252Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF4VbbS5LdgSxlECITkHg0Zf",
   "id"=>"RF4VbbS5LdgSxlECITkHg0Zf",
   "links"=>
    {"debit"=>"WD4SOTNKiZbBFrmMk6mfszIl", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF854-846-2859",
   "updated_at"=>"2014-04-25T20:18:50.969971Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fa93b735cf8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa93b734ee8/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa93b72ebd8/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa93b72e200/lib/balanced/utils.rb:6 (lambda)>}>

% endif
