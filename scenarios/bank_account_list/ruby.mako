% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fb793f4f248
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
    "created_at"=>"2014-04-17T22:38:50.708229Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA8MzVwjVFnkuUvfHaXmqMZ",
    "id"=>"BA8MzVwjVFnkuUvfHaXmqMZ",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-17T22:38:50.708231Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fb793f4e690/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fb793f4c750/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb793f1e8a0/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb793f1de28/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb793ef7f20/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fb793ef7ed0
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
    "created_at"=>"2014-04-17T22:38:43.651277Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BAcRGk40xmI8meZpNLB3oYp",
    "id"=>"BAcRGk40xmI8meZpNLB3oYp",
    "links"=>
     {"bank_account_verification"=>"BZ2AZ05mk2SQsEcicjSh3UN", "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-04-17T22:38:49.124363Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fb793ef63f0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fb793ef4550/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fb795982610/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fb795981be8/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fb794c0fcd0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
