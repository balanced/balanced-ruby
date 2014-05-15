% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fa7d1c9b410
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
    "created_at"=>"2014-05-15T00:39:14.751497Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA2EmblHC08bmwiwwNrbI0Rj",
    "id"=>"BA2EmblHC08bmwiwwNrbI0Rj",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-05-15T00:39:14.751501Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fa7d1c93260/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa7d1c83860/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d1c7b1b0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa7d1c79720/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d1c6af90/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fa7d1c6af40
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
    "created_at"=>"2014-05-15T00:38:35.458618Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA1W9SQLf5YRaGbUGiNIO2fb",
    "id"=>"BA1W9SQLf5YRaGbUGiNIO2fb",
    "links"=>
     {"bank_account_verification"=>"BZ2hpl7vb9rgWVZxrXRzZb93",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-05-15T00:39:12.506691Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fa7d1c68330/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fa7d1c58548/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fa7d1c4bbe0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fa7d1c48ee0/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fa7d1c320c8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
