% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fcde197e7d8
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
    "created_at"=>"2014-12-17T21:24:27.877249Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA6z9hDVGj7utvQSiIhHuuhf",
    "id"=>"BA6z9hDVGj7utvQSiIhHuuhf",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-12-17T21:24:27.877250Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fcde197dc70/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fcde195fc48/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fcde195dce0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde195d330/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde19272d0/lib/balanced/utils.rb:6 (lambda)>,
    "settlements"=>
     #<Proc:0x007fcde19252f0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fcde19252a0
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
    "created_at"=>"2014-12-17T21:24:16.246660Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA6m4zboF7ocvKbkhjszP5NS",
    "id"=>"BA6m4zboF7ocvKbkhjszP5NS",
    "links"=>
     {"bank_account_verification"=>"BZ6tLSIRoUIhzntA96EfMaQl",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-12-17T21:24:26.167634Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fcde18f77b0/lib/balanced/resources/resource.rb:56 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fcde18f5898/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fcde18ef920/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fcde18eef70/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fcde18ecef0/lib/balanced/utils.rb:6 (lambda)>,
    "settlements"=>
     #<Proc:0x007fcde3af2fb8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
