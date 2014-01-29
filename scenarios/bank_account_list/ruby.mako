% if mode == 'definition':
Balanced::BankAccount.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

Balanced::BankAccount.all

% elif mode == 'response':
[#<Balanced::BankAccount:0x007fdc9c085090
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
    "created_at"=>"2014-01-27T22:56:20.540530Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA1QFf0LmIxr8p41msqX46Oy",
    "id"=>"BA1QFf0LmIxr8p41msqX46Oy",
    "links"=>{"bank_account_verification"=>nil, "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-01-27T22:56:20.540534Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fdc9c0840a0/lib/balanced/utils.rb:6 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fdc9c08dcb8/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fdc9c0979e8/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fdc9c096f48/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9c094bd0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::BankAccount:0x007fdc9c094b80
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
    "created_at"=>"2014-01-27T22:56:08.446352Z",
    "fingerprint"=>
     "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
    "href"=>"/bank_accounts/BA1D3vL3LjasB0kewMqRGI0S",
    "id"=>"BA1D3vL3LjasB0kewMqRGI0S",
    "links"=>
     {"bank_account_verification"=>"BZ1FF2MHFH9upRu7C0QUwnby",
      "customer"=>nil},
    "meta"=>{},
    "name"=>"Johann Bernoulli",
    "routing_number"=>"121000358",
    "updated_at"=>"2014-01-27T22:56:18.623674Z"},
  @hyperlinks=
   {"bank_account_verification"=>
     #<Proc:0x007fdc9c09daa0/lib/balanced/resources/resource.rb:60 (lambda)>,
    "bank_account_verifications"=>
     #<Proc:0x007fdc9c0a5610/lib/balanced/utils.rb:6 (lambda)>,
    "credits"=>
     #<Proc:0x007fdc9c0b68e8/lib/balanced/utils.rb:6 (lambda)>,
    "customer"=>
     #<Proc:0x007fdc9c0b5e48/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fdc9c0bfc68/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
