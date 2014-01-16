% if mode == 'definition':
Balanced::Refund.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

refund = Balanced::Refund.find('/refunds/RF3J0oK238X6TMkHPzz0XatV')
refund.description = 'update this description'
refund.meta = {
    'user.notes' => 'very polite on the phone',
    'refund.reason' => 'user not happy with product',
    'user.refund.count' => '3'
}
refund.save

% elif mode == 'response':
#<Balanced::Refund:0x10746cc80
 @attributes=
  {"transaction_number"=>"RF954-018-1101",
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:50.254779Z",
   "meta"=>
    {"user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product",
     "user.refund.count"=>"3"},
   "links"=>{"order"=>nil, "debit"=>"WD3GNPmi4QkBHzTZNvMt11MA"},
   "href"=>"/refunds/RF3J0oK238X6TMkHPzz0XatV",
   "description"=>"update this description",
   "id"=>"RF3J0oK238X6TMkHPzz0XatV",
   "amount"=>3000,
   "updated_at"=>"2014-01-16T19:57:54.885627Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debit"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>}>

% endif
