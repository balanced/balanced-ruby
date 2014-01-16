% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

debit = Balanced::Debit.find('/debits/WD2UWAyQO5m1zFzbiiZV2V6o')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x10759e810
 @attributes=
  {"transaction_number"=>"W268-408-3709",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"BAL*Statement text",
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:05.762586Z",
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "links"=>
    {"customer"=>nil, "order"=>nil, "source"=>"CC2O5c4KrZSiyV7eFPGySXtd"},
   "href"=>"/debits/WD2UWAyQO5m1zFzbiiZV2V6o",
   "failure_reason"=>nil,
   "description"=>"New description for debit",
   "id"=>"WD2UWAyQO5m1zFzbiiZV2V6o",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:57:36.123367Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "refunds"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
