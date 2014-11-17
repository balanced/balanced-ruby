% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fa0e1564be8
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*example.com",
    "created_at"=>"2014-11-14T19:29:49.012489Z",
    "currency"=>"USD",
    "description"=>"Order #12341234",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD43j6TF6kVllWR8ZB9c3HiM",
    "id"=>"WD43j6TF6kVllWR8ZB9c3HiM",
    "links"=>
     {"card_hold"=>"HL43hZlL9kOYc7YpCudLL7NK",
      "customer"=>nil,
      "dispute"=>nil,
      "order"=>"OR3BXTqXewuSy1Cu3g6N2Sjj",
      "source"=>"CC33DRVrekWpiHYjxSdVuqWc"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W1CV-D64-23NY",
    "updated_at"=>"2014-11-14T19:29:54.642888Z"},
  @hyperlinks=
   {"card_hold"=>
     #<Proc:0x007fa0e156ad90@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "customer"=>
     #<Proc:0x007fa0e156a430@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa0e1569ad0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa0e156fc50@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa0e156e2b0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa0e156c438@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa0e1572a90@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fa0e1572a40
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*example.com",
    "created_at"=>"2014-11-14T19:29:25.219306Z",
    "currency"=>"USD",
    "description"=>"Order #12341234",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD3CxTqrRDWynU189qdNf9Xq",
    "id"=>"WD3CxTqrRDWynU189qdNf9Xq",
    "links"=>
     {"card_hold"=>"HL3CxhLaA60AV6X8pLxscwz6",
      "customer"=>nil,
      "dispute"=>nil,
      "order"=>"OR3BXTqXewuSy1Cu3g6N2Sjj",
      "source"=>"CC33DRVrekWpiHYjxSdVuqWc"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"WWAG-T69-DVPI",
    "updated_at"=>"2014-11-14T19:29:27.243249Z"},
  @hyperlinks=
   {"card_hold"=>
     #<Proc:0x007fa0e1570c18@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "customer"=>
     #<Proc:0x007fa0e1578288@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa0e1577928@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa0e1575ad8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa0e157c130@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa0e157a2e0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa0e1578968@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
