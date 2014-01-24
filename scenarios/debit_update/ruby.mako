% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

debit = Balanced::Debit.fetch('/debits/WD3zpxOf9kLoeFmf6dYPfrYW')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x1087d2cc0
 @attributes=
  {"links"=>
    {"customer"=>nil, "source"=>"CC3txpMUnPuUSV6vGdaibuL4", "order"=>nil},
   "appears_on_statement_as"=>"BAL*Statement text",
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "failure_reason"=>nil,
   "description"=>"New description for debit",
   "created_at"=>"2014-01-24T17:53:40.571557Z",
   "href"=>"/debits/WD3zpxOf9kLoeFmf6dYPfrYW",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "transaction_number"=>"W596-964-2706",
   "currency"=>"USD",
   "updated_at"=>"2014-01-24T17:54:07.203303Z",
   "id"=>"WD3zpxOf9kLoeFmf6dYPfrYW",
   "status"=>"succeeded"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087f5478@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
