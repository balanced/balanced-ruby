% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

credit = Balanced::Credit.fetch('/credits/CR7sdDSiBjguD4MM6NtfcGs6')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fbaa1bcbb10
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-03-20T18:17:54.948020Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR7sdDSiBjguD4MM6NtfcGs6",
   "id"=>"CR7sdDSiBjguD4MM6NtfcGs6",
   "links"=>
    {"customer"=>"CU6Puxkmu24SfVbY0oi1fPLw",
     "destination"=>"BA6S1rsNWTCwBugJqjBNQbJU",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR469-739-3539",
   "updated_at"=>"2014-03-20T18:18:00.536754Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fbaa1bc9fb8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fbaa1bc8578/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa1bc2678/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa1bc1bb0/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fbaa206fd10/lib/balanced/utils.rb:6 (lambda)>}>

% endif
