% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

debit = Balanced::Debit.fetch('/debits/WD5PTwr2bwJLIyJio1pEpYBr')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fa4e41c0418
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-03-06T19:23:01.594300Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD5PTwr2bwJLIyJio1pEpYBr",
   "id"=>"WD5PTwr2bwJLIyJio1pEpYBr",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC5Buki6e4Kg4bDVZ3OSfQ8O"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"W986-715-3969",
   "updated_at"=>"2014-03-06T19:23:33.383170Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa4e4a33b90/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa4e4a32ec0/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa4e4a308a0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa4e4a2ab80/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa4e4a29c08/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa4e4a22980/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
