% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

credit = Balanced::Credit.fetch('/credits/CR3yvp1R6162kK7MozoHmSkg')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fa0e1455ec8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-11-14T19:29:21.626465Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR3yvp1R6162kK7MozoHmSkg",
   "id"=>"CR3yvp1R6162kK7MozoHmSkg",
   "links"=>
    {"customer"=>"CU2718cI8PkMdFyPjboZLZfn",
     "destination"=>"BA2gul8YMjFWnFk0fFHXwX6g",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"pending",
   "transaction_number"=>"CR5DJ-8E6-AG4L",
   "updated_at"=>"2014-11-14T19:29:37.255333Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa0e145c070@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa0e145a720@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e14588a8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e145fec8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e145e050@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
