% if mode == 'definition':
Balanced::Credit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

credit = Balanced::Credit.fetch('/credits/CR3yvp1R6162kK7MozoHmSkg')
% elif mode == 'response':
#<Balanced::Credit:0x007fa0e143c658
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-11-14T19:29:21.626465Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR3yvp1R6162kK7MozoHmSkg",
   "id"=>"CR3yvp1R6162kK7MozoHmSkg",
   "links"=>
    {"customer"=>"CU2718cI8PkMdFyPjboZLZfn",
     "destination"=>"BA2gul8YMjFWnFk0fFHXwX6g",
     "order"=>nil},
   "meta"=>{},
   "status"=>"pending",
   "transaction_number"=>"CR5DJ-8E6-AG4L",
   "updated_at"=>"2014-11-14T19:29:23.381178Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa0e1442878@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa0e1440f28@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1447080@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e14466d0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa0e1444858@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
