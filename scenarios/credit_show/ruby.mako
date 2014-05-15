% if mode == 'definition':
Balanced::Credit.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

credit = Balanced::Credit.fetch('/credits/CR4OhD4V9LuxGe5kXaNpUULD')
% elif mode == 'response':
#<Balanced::Credit:0x007fa7d415c650
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"example.com",
   "created_at"=>"2014-05-15T00:41:13.829371Z",
   "currency"=>"USD",
   "description"=>nil,
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/credits/CR4OhD4V9LuxGe5kXaNpUULD",
   "id"=>"CR4OhD4V9LuxGe5kXaNpUULD",
   "links"=>
    {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
     "destination"=>"BA2RqFlRIm0xqCNnHJNLYWMd",
     "order"=>nil},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"CR666-433-9281",
   "updated_at"=>"2014-05-15T00:41:14.822162Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d4156688/lib/balanced/resources/resource.rb:60 (lambda)>,
   "destination"=>
    #<Proc:0x007fa7d41541a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d414e230/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d414d830/lib/balanced/utils.rb:6 (lambda)>,
   "reversals"=>
    #<Proc:0x007fa7d4147778/lib/balanced/utils.rb:6 (lambda)>}>

% endif
