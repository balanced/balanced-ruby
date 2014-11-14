% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007fa0e13ed968
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"example.com",
    "created_at"=>"2014-11-14T19:29:28.199462Z",
    "currency"=>"USD",
    "description"=>"Order #12341234",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/credits/CR3FU6XvFswsndaX7IxscSkg",
    "id"=>"CR3FU6XvFswsndaX7IxscSkg",
    "links"=>
     {"customer"=>"CU2718cI8PkMdFyPjboZLZfn",
      "destination"=>"BA2gul8YMjFWnFk0fFHXwX6g",
      "order"=>"OR3BXTqXewuSy1Cu3g6N2Sjj"},
    "meta"=>{},
    "status"=>"pending",
    "transaction_number"=>"CRFQJ-LXX-56OB",
    "updated_at"=>"2014-11-14T19:29:31.106470Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa0e13f38e0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007fa0e13f1c70@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fa0e13f7788@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa0e13f58e8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa0e13fb8d8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Credit:0x007fa0e13fb860
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
     #<Proc:0x007fa0e13f9808@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "destination"=>
     #<Proc:0x007fa0e13ff8c0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "events"=>
     #<Proc:0x007fa0e13fd318@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa0e13fc878@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fa0e1402638@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
