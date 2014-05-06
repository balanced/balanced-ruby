% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-aUV295IugdhWSNx2JFckYBCSvfY2ibgq')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fb60b2332a0
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
    "created_at"=>"2014-04-25T22:00:04.813389Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA7sojXcP7oSdQyrjUA7wXg9",
    "id"=>"BA7sojXcP7oSdQyrjUA7wXg9",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-25T22:00:04.813391Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fb60b232058/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fb60b237a58/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb60a890c48/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb60a890180/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b8daf68/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fb60b8daf18
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
    "created_at"=>"2014-04-25T21:59:58.398916Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA7lb2roygfhwDfbvikDLcHP",
    "id"=>"BA7lb2roygfhwDfbvikDLcHP",
    "links"=>
     {"bank_account_verification"=>"BZ7n38gpwYou03mkP4Vt83Cl",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-25T22:00:03.197392Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fb60b8d8790/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fb60b912a30/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb60b91cbe8/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb60b91c080/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb60b921ad0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
