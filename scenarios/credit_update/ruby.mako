% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

credit = Balanced::Credit.find('/credits/CR32mSCM65MaftVzNbDnu1Y3')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x107463568
 @attributes=
  {"transaction_number"=>"CR310-034-6724",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"example.com",
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:12.342506Z",
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "links"=>
    {"destination"=>"BA30F4VAWOTOIH4bgcecDDSK",
     "customer"=>"CU2Yg3vl9HHlLwM3sJkyHjsa",
     "order"=>nil},
   "href"=>"/credits/CR32mSCM65MaftVzNbDnu1Y3",
   "failure_reason"=>nil,
   "description"=>"New description for credit",
   "id"=>"CR32mSCM65MaftVzNbDnu1Y3",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:57:18.465675Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"destination"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "customer"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>,
   "events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
