% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x10e4bdef8
  @attributes=
   {"account_type"=>"checking",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
    "can_credit"=>true,
    "name"=>"Johann Bernoulli",
    "account_number"=>"xxxxxx0001",
    "created_at"=>"2014-03-05T23:25:48.401480Z",
    "id"=>"BA3LBmizwthrjehivn2ffzHU",
    "href"=>"/bank_accounts/BA3LBmizwthrjehivn2ffzHU",
    "can_debit"=>false,
    "routing_number"=>"121000358",
    "meta"=>{},
    "updated_at"=>"2014-03-05T23:25:48.401483Z",
    "address"=>
     {"country_code"=>nil,
      "line2"=>nil,
      "line1"=>nil,
      "state"=>nil,
      "city"=>nil,
      "postal_code"=>nil}},
  @hyperlinks=
   {"bank_account_verifications"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "credits"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>,
 #<Balanced::BankAccount:0x10e4b4128
  @attributes=
   {"account_type"=>"checking",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "links"=>
     {"customer"=>nil,
      "bank_account_verification"=>"BZ3NheXIi1UxUiNtkaSo1ZI5"},
    "can_credit"=>true,
    "name"=>"Johann Bernoulli",
    "account_number"=>"xxxxxx0001",
    "created_at"=>"2014-03-05T23:25:42.337258Z",
    "id"=>"BA3EMnkybAfEzVlbVquXFLEk",
    "href"=>"/bank_accounts/BA3EMnkybAfEzVlbVquXFLEk",
    "can_debit"=>true,
    "routing_number"=>"121000358",
    "meta"=>{},
    "updated_at"=>"2014-03-05T23:25:46.811459Z",
    "address"=>
     {"country_code"=>nil,
      "line2"=>nil,
      "line1"=>nil,
      "state"=>nil,
      "city"=>nil,
      "postal_code"=>nil}},
  @hyperlinks=
   {"bank_account_verifications"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "debits"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "customer"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
    "bank_account_verification"=>
     #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
    "credits"=>
     #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>]

% endif
