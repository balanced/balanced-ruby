% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x1072b41e0
  @attributes=
   {"routing_number"=>"121000358",
    "can_debit"=>false,
    "name"=>"Johann Bernoulli",
    "can_credit"=>true,
    "created_at"=>"2014-01-16T19:56:34.125318Z",
    "account_number"=>"xxxxxx0001",
    "meta"=>{},
    "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
    "href"=>"/bank_accounts/BA2lmvGmMFbpYcnTGrdtmlxk",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "id"=>"BA2lmvGmMFbpYcnTGrdtmlxk",
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "account_type"=>"checking",
    "updated_at"=>"2014-01-16T19:56:34.125322Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verifications"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::BankAccount:0x107249638
  @attributes=
   {"routing_number"=>"121000358",
    "can_debit"=>true,
    "name"=>"Johann Bernoulli",
    "can_credit"=>true,
    "created_at"=>"2014-01-16T19:56:27.508804Z",
    "account_number"=>"xxxxxx0001",
    "meta"=>{},
    "links"=>
     {"customer"=>nil,
      "bank_account_verification"=>"BZ2fvxTVMYZpggvJbM6iRNZo"},
    "href"=>"/bank_accounts/BA2dV6K5x3YJms1ovXGuATRQ",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "id"=>"BA2dV6K5x3YJms1ovXGuATRQ",
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "account_type"=>"checking",
    "updated_at"=>"2014-01-16T19:56:32.383024Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verifications"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>}>]

% endif
