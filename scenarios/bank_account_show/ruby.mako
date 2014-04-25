% if mode == 'definition':
Balanced::BankAccount.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA3PDwDCkdeC4OgPtPNwoCWl')

% elif mode == 'response':
#<Balanced::BankAccount:0x007fa6d258ced0
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
    #<Proc:0x007fa6d258c368/lib/balanced/utils.rb:6 (lambda)>,
   "bank_account_verifications"=>
    #<Proc:0x007fa6d2576388/lib/balanced/utils.rb:6 (lambda)>,
   "credits"=>
    #<Proc:0x007fa6d2574308/lib/balanced/utils.rb:6 (lambda)>,
   "customer"=>
    #<Proc:0x007fa6d256f998/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa6d256d9b8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
