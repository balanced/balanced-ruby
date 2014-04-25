% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fa6d26543e0
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
    "created_at"=>"2014-04-25T20:09:22.528624Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA3PDwDCkdeC4OgPtPNwoCWl",
    "id"=>"BA3PDwDCkdeC4OgPtPNwoCWl",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-25T20:09:22.528628Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fa6d265f830/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa6d265d918/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa6d2667968/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa6d2666fb8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa6d2665078/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fa6d2665028
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
    "created_at"=>"2014-04-25T20:09:15.992626Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA3IhKG3bIN22cLHbaOIGtHb",
    "id"=>"BA3IhKG3bIN22cLHbaOIGtHb",
    "links"=>
     {"bank_account_verification"=>"BZ3KkIZuSazKfqFrFIfsrhmB",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-25T20:09:20.850706Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fa6d26673a0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa6d2665410/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa6d265ea98/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa6d265e0e8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa6d265c0b8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
