% if mode == 'definition':
Balanced::BankAccount.credit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA3nxdnqw3ZSHjAw5B0feZlB')
bank_account.credit(:amount => 5000)
% elif mode == 'response':
#<Balanced::Credit:0x10742cb30
 @attributes=
  {"transaction_number"=>"CR238-810-6703",
   "failure_reason_code"=>nil,
   "appears_on_statement_as"=>"example.com",
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:56.481715Z",
   "meta"=>{},
   "links"=>
    {"destination"=>"BA3nxdnqw3ZSHjAw5B0feZlB",
     "customer"=>"CU3icqpTA5n8LTkqcmRpwqPZ",
     "order"=>nil},
   "href"=>"/credits/CR3PZ3ffp8LdACxx4lFH1Vle",
   "failure_reason"=>nil,
   "description"=>nil,
   "id"=>"CR3PZ3ffp8LdACxx4lFH1Vle",
   "amount"=>5000,
   "updated_at"=>"2014-01-16T19:57:57.120272Z",
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
