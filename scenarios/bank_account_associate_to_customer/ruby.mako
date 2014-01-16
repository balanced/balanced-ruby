% if mode == 'definition':
Balanced::Customer.add_bank_account

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

customer = Balanced::Customer.find('/customers/CU546zhmBDn3NEMyP7qXHqe4')
customer.add_bank_account("")

% elif mode == 'response':
#<Balanced::BankAccount:0x1087fb738
 @attributes=
  {"account_type"=>"checking",
   "created_at"=>"2014-01-16T19:23:21.631716Z",
   "name"=>"Johann Bernoulli",
   "meta"=>{},
   "can_credit"=>true,
   "account_number"=>"xxxxxx0001",
   "updated_at"=>"2014-01-16T19:23:22.190258Z",
   "id"=>"BA59GFIzMba9y9LuSrYZNaxy",
   "can_debit"=>false,
   "links"=>
    {"customer"=>"CU546zhmBDn3NEMyP7qXHqe4", "bank_account_verification"=>nil},
   "routing_number"=>"121000358",
   "href"=>"/bank_accounts/BA59GFIzMba9y9LuSrYZNaxy",
   "bank_name"=>"BANK OF AMERICA, N.A.",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x00000001087ea000@./lib/balanced/resources/resource.rb:61>,
   "bank_account_verifications"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
