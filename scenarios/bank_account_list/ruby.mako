% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fc09e1c9e20
  @attributes=
   {"account_number"=>"xxxxxx0001",
    "account_type"=>"checking",
    "address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "can_credit"=>true,
    "can_debit"=>false,
    "created_at"=>"2014-04-01T16:38:09.730386Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA4BWUWGpCUSJoo0e9EiFE2",
    "id"=>"BA4BWUWGpCUSJoo0e9EiFE2",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-01T16:38:09.730388Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fc09e1c92b8/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fc09e1d33f8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fc09e1d1530/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fc09e1d0b80/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09e1dac98/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fc09e1dac48
  @attributes=
   {"account_number"=>"xxxxxx0001",
    "account_type"=>"checking",
    "address"=>
     {"city"=>nil,
      "country_code"=>nil,
      "line1"=>nil,
      "line2"=>nil,
      "postal_code"=>nil,
      "state"=>nil},
    "bank_name"=>"BANK OF AMERICA, N.A.",
    "can_credit"=>true,
    "can_debit"=>true,
    "created_at"=>"2014-04-01T16:38:02.816377Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA7JTM3gXtLHz4juPfeQ4oqz",
    "id"=>"BA7JTM3gXtLHz4juPfeQ4oqz",
    "links"=>
     {"bank_account_verification"=>"BZ7zjJJJqb1VU633qQw0z1Vc",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-01T16:38:07.512751Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fc09e1d90f0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fc09e1e31b8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fc09e1e1278/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fc09e1e08c8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09e1ea968/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
