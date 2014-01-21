% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x1084942e8
  @attributes=
   {"name"=>"Johann Bernoulli",
    "created_at"=>"2014-01-16T20:00:39.833799Z",
    "can_debit"=>false,
    "routing_number"=>"121000358",
    "account_number"=>"xxxxxx0001",
    "meta"=>{},
    "account_type"=>"checking",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
    "id"=>"BA6NK6SXBuIjbRn8NMhz1r1Z",
    "href"=>"/bank_accounts/BA6NK6SXBuIjbRn8NMhz1r1Z",
    "updated_at"=>"2014-01-16T20:00:39.833803Z",
    "can_credit"=>true,
    "bank_name"=>"BANK OF AMERICA, N.A."},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "bank_account_verifications"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>,
 #<Balanced::BankAccount:0x10841f560
  @attributes=
   {"name"=>"Johann Bernoulli",
    "created_at"=>"2014-01-16T20:00:32.654587Z",
    "can_debit"=>true,
    "routing_number"=>"121000358",
    "account_number"=>"xxxxxx0001",
    "meta"=>{},
    "account_type"=>"checking",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "links"=>
     {"customer"=>nil,
      "bank_account_verification"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw"},
    "id"=>"BA6FDSSC6O5Ip8el1dDjfMz8",
    "href"=>"/bank_accounts/BA6FDSSC6O5Ip8el1dDjfMz8",
    "updated_at"=>"2014-01-16T20:00:37.654205Z",
    "can_credit"=>true,
    "bank_name"=>"BANK OF AMERICA, N.A."},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x00000001086afbe0@./lib/balanced/resources/resource.rb:60>,
    "credits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "bank_account_verifications"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>]

% endif
