% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

debit = Balanced::Debit.find('/debits/WD4FhLp2hfPD2bWBL7bgwo7S')
debit.description = 'New description for debit'
debit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x1088bc9b0
 @attributes=
  {"transaction_number"=>"W583-253-5965",
   "created_at"=>"2014-01-16T19:22:54.609032Z",
   "appears_on_statement_as"=>"BAL*Statement text",
   "status"=>"succeeded",
   "meta"=>{"facebook.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "updated_at"=>"2014-01-16T19:23:26.479794Z",
   "id"=>"WD4FhLp2hfPD2bWBL7bgwo7S",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"New description for debit",
   "links"=>
    {"order"=>nil, "customer"=>nil, "source"=>"CC4ysIN2SnTC7fx5thqY4Gi4"},
   "currency"=>"USD",
   "href"=>"/debits/WD4FhLp2hfPD2bWBL7bgwo7S",
   "amount"=>5000},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>}>

% endif
