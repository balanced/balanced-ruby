% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fa93ec0c3a0
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
     #<Proc:0x007fa93ec177f0/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa93ec158d8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa93ec1f900/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa93ec1ef50/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93ec1d010/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fa93ec1cfc0
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
     #<Proc:0x007fa93ec1f310/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa93ec1d380/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa93ec169e0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa93ec16030/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa93ec0ffa0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
