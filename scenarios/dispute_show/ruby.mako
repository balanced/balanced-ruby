% if mode == 'definition':
Balanced::Dispute.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

dispute = Balanced::Dispute.fetch('/disputes/DT5bIvcPoUL541jY893QHQNB')

% elif mode == 'response':
#<Balanced::Dispute:0x007fa0e1571208
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-11-14T19:30:51.629240Z",
   "currency"=>"USD",
   "href"=>"/disputes/DT5bIvcPoUL541jY893QHQNB",
   "id"=>"DT5bIvcPoUL541jY893QHQNB",
   "initiated_at"=>"2014-11-14T19:29:48.523288Z",
   "links"=>{"transaction"=>"WD4xfFIxpeQpeRHm55Qc2xV3"},
   "meta"=>{},
   "reason"=>"fraud",
   "respond_by"=>"2014-12-14T19:29:48.523291Z",
   "status"=>"pending",
   "updated_at"=>"2014-11-14T19:30:51.629242Z"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x007fa0e156e698@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "transaction"=>
    #<Proc:0x007fa0e156c4d8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
