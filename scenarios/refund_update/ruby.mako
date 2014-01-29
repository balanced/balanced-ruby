% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

refund = Balanced::Refund.fetch('/refunds/RF3RklPuFgsgI50UuYtr4g6I')
refund.description = 'update this description'
refund.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x007fdc9c0149f8
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-01-27T22:58:11.375665Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "href"=>"/refunds/RF3RklPuFgsgI50UuYtr4g6I",
   "id"=>"RF3RklPuFgsgI50UuYtr4g6I",
   "links"=>
    {"debit"=>"WD3MKNxNTKBGgA7mX50yogiu", "dispute"=>nil, "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.refund.count"=>"3"},
   "status"=>"succeeded",
   "transaction_number"=>"RF383-088-7077",
   "updated_at"=>"2014-01-27T22:58:17.950799Z"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x007fdc9c00d838/lib/balanced/resources/resource.rb:60 (lambda)>,
   "dispute"=>
    #<Proc:0x007fdc9c00cb18/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fdc9b865018/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fdc9b85ff78/lib/balanced/utils.rb:6 (lambda)>}>

% endif
