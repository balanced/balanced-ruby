% if mode == 'definition':
Balanced::Credit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

credit = Balanced::Credit.fetch('/credits/CR4OhD4V9LuxGe5kXaNpUULD')
credit.description = 'New description for credit'
credit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
credit.save

% elif mode == 'response':
#<Balanced::Credit:0x007fa7d4127568
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-05-15T00:41:13.829371Z",
   "currency"=>"USD",
   "description"=>"New description for credit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR4OhD4V9LuxGe5kXaNpUULD",
   "id"=>"CR4OhD4V9LuxGe5kXaNpUULD",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "destination"=>"BA2RqFlRIm0xqCNnHJNLYWMd",
     "order"=>nil},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"CR666-433-9281",
   "updated_at"=>"2014-05-15T00:41:21.980193Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d4125588/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa7d411f818/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d411c848/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d41177f8/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d4115318/lib/balanced/utils.rb:6 (lambda)>}>

% endif
