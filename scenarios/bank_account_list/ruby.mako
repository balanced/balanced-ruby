% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fbaa49eae60
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
    "created_at"=>"2014-03-20T18:17:14.945832Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA6JeIzD7zM6rmp0Nt8Mu9Sw",
    "id"=>"BA6JeIzD7zM6rmp0Nt8Mu9Sw",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-03-20T18:17:14.945845Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fbaa49ea2f8/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fbaa49e83e0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fbaa49f2430/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fbaa49f1a80/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fbaa49fbaf8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fbaa49fbaa8
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
    "created_at"=>"2014-03-20T18:17:07.496784Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA6ARjzdSjbnDWFK6ykjuGhy",
    "id"=>"BA6ARjzdSjbnDWFK6ykjuGhy",
    "links"=>
     {"bank_account_verification"=>"BZ6CHglHXFOUsyrdMAvPN2LZ",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-03-20T18:17:13.250120Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fbaa49f9f50/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fbaa49f8060/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fbaa4a020d8/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fbaa4a01728/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fbaa4a0b7c8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
