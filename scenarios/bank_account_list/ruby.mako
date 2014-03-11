% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fa4e48ecca0
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
    "created_at"=>"2014-03-06T19:22:30.247406Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA58WYAEUMrEtAkW5KAvWo5V",
    "id"=>"BA58WYAEUMrEtAkW5KAvWo5V",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-03-06T19:22:30.247410Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fa4e48d78f0/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa4e48e7bb0/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa4e48e5540/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa4e48e4988/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e48d2148/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fa4e48d20f8
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
    "created_at"=>"2014-03-06T19:22:22.966278Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA50LpPrCTB63Ecm0wEgdOQM",
    "id"=>"BA50LpPrCTB63Ecm0wEgdOQM",
    "links"=>
     {"bank_account_verification"=>"BZ5alC0fajkuBOvOU7lVT7QJ",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-03-06T19:22:27.888575Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fa4e48df988/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa4e48dd430/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa4e48ced68/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa4e48ce0e8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa4e48cb780/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
