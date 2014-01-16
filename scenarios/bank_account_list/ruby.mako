% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x101dc7fd8
  @attributes=
   {"routing_number"=>"121000358",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "meta"=>{},
    "account_number"=>"xxxxxx0001",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "created_at"=>"2014-01-16T20:00:39.833799Z",
    "account_type"=>"checking",
    "id"=>"BA6NK6SXBuIjbRn8NMhz1r1Z",
    "can_credit"=>true,
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "name"=>"Johann Bernoulli",
    "can_debit"=>false,
    "updated_at"=>"2014-01-16T20:00:39.833803Z",
    "href"=>"/bank_accounts/BA6NK6SXBuIjbRn8NMhz1r1Z"},
  @hyperlinks=
   {"credits"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verifications"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::BankAccount:0x101d5efd8
  @attributes=
   {"routing_number"=>"121000358",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "meta"=>{},
    "account_number"=>"xxxxxx0001",
    "links"=>
     {"bank_account_verification"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
      "customer"=>nil},
    "created_at"=>"2014-01-16T20:00:32.654587Z",
    "account_type"=>"checking",
    "id"=>"BA6FDSSC6O5Ip8el1dDjfMz8",
    "can_credit"=>true,
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "name"=>"Johann Bernoulli",
    "can_debit"=>true,
    "updated_at"=>"2014-01-16T20:00:37.654205Z",
    "href"=>"/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8"},
  @hyperlinks=
   {"credits"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x0000000101fdf000@./lib/balanced/resources/resource.rb:61>,
    "bank_account_verifications"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
