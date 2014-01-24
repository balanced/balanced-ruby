% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

refund = Balanced::Refund.fetch('/refunds/RF4jM7mlJNnsZ3KWSQiQxFSw')
refund.description = 'update this description'
refund.meta = {
    'user.refund.count' => '3',
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x10879a578
 @attributes=
  {"links"=>{"order"=>nil, "debit"=>"WD4fC2Wmv7z7LxWLQptwEv2n"},
   "meta"=>
    {"user.refund.count"=>"3",
     "refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone"},
   "description"=>"update this description",
   "created_at"=>"2014-01-24T17:54:21.764061Z",
   "href"=>"/refunds/RF4jM7mlJNnsZ3KWSQiQxFSw",
   "amount"=>3000,
   "transaction_number"=>"RF642-909-8143",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:54:26.305194Z",
   "id"=>"RF4jM7mlJNnsZ3KWSQiQxFSw",
   "status"=>"succeeded"},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "debit"=>#<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
