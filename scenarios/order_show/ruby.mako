% if mode == 'definition':
Balanced::Order.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

order = Balanced::Order.fetch('/orders/OR3FOihZa7lMHdAP5p8BJZVY')

% elif mode == 'response':
#<Balanced::Order:0x007fdc9c166b80
 @attributes=
  {"amount"=>0,
   "amount_escrowed"=>0,
   "created_at"=>"2014-01-27T22:58:01.115720Z",
   "currency"=>"USD",
   "delivery_address"=>
    {"city"=>nil,
     "country_code"=>nil,
     "line1"=>nil,
     "line2"=>nil,
     "postal_code"=>nil,
     "state"=>nil},
   "description"=>"Order #12341234",
   "href"=>"/orders/OR3FOihZa7lMHdAP5p8BJZVY",
   "id"=>"OR3FOihZa7lMHdAP5p8BJZVY",
   "links"=>{"merchant"=>"CU3eeasZ9yQ86uzzIYZkrPGg"},
   "meta"=>{},
   "updated_at"=>"2014-01-27T22:58:01.115723Z"},
 @hyperlinks=
  {"buyers"=>
    #<Proc:0x007fdc9c15e570/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fdc9c15c428/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fdc9c13f2d8/lib/balanced/utils.rb:6 (lambda)>,
   "merchant"=>
    #<Proc:0x007fdc9c14c988/lib/balanced/resources/resource.rb:60 (lambda)>,
   "refunds"=>
    #<Proc:0x007fdc9c136d18/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fdc9c1330a0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
