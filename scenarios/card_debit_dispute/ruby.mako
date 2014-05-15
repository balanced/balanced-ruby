% if mode == 'definition':
Balanced::Card.debit
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

card = Balanced::Card.fetch('/cards/CC6iIaFL1QliTaYG47BArZAh')
card.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d31cb830
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-05-15T00:42:39.077752Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD6mairBakAx5t8ETjMYFu7T",
   "id"=>"WD6mairBakAx5t8ETjMYFu7T",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC6iIaFL1QliTaYG47BArZAh"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W755-582-8394",
   "updated_at"=>"2014-05-15T00:42:42.685055Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d31cacf0/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d31ca278/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d31c8400/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d31c39c8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d31c1a60/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d31c0070/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
