% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

credit = Balanced::Credit.find('/credits/CR4NONsvrPh7LPXKJfGdLC2W')
credit.description = 'New description for credit'
credit.meta = {
    'facebook.id' => '1234567890',
    'anykey' => 'valuegoeshere'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x10877fbd8
 @attributes=
  {"transaction_number"=>"CR993-913-4615",
   "created_at"=>"2014-01-16T19:23:02.198104Z",
   "appears_on_statement_as"=>"example.com",
   "status"=>"succeeded",
   "meta"=>{"facebook.id"=>"1234567890", "anykey"=>"valuegoeshere"},
   "updated_at"=>"2014-01-16T19:23:09.203274Z",
   "id"=>"CR4NONsvrPh7LPXKJfGdLC2W",
   "failure_reason_code"=>nil,
   "failure_reason"=>nil,
   "description"=>"New description for credit",
   "links"=>
    {"order"=>nil,
     "customer"=>"CU4JzSODRNDJ6Fa3tUIIQ4Ug",
     "destination"=>"BA4LhORHuuUNvq50PKukbR6S"},
   "currency"=>"USD",
   "href"=>"/credits/CR4NONsvrPh7LPXKJfGdLC2W",
   "amount"=>5000},
 @hyperlinks=
  {"order"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "destination"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "events"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
