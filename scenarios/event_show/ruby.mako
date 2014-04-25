% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

event = Balanced::Event.fetch('/events/EV754ca810ccb511e3b6ef061e5f402045')

% elif mode == 'response':
#<Balanced::Event:0x007fa93e99cfc0
 @attributes=
  {"callback_statuses"=>
    {"failed"=>0, "pending"=>0, "retrying"=>0, "succeeded"=>0},
   "entity"=>
    {"bank_accounts"=>
      [{"account_number"=>"xxxxxxxxxxx5555",
        "account_type"=>"CHECKING",
        "address"=>
         {"city"=>nil,
          "country_code"=>nil,
          "line1"=>nil,
          "line2"=>nil,
          "postal_code"=>nil,
          "state"=>nil},
        "bank_name"=>"WELLS FARGO BANK NA",
        "can_credit"=>true,
        "can_debit"=>true,
        "created_at"=>"2014-04-25T20:09:08.031387Z",
        "fingerprint"=>"6ybvaLUrJy07phK2EQ7pVk",
        "href"=>"/bank_accounts/BA3z8ko53HDEFwxjmNlc998p",
        "id"=>"BA3z8ko53HDEFwxjmNlc998p",
        "links"=>
         {"bank_account_verification"=>nil,
          "customer"=>"CU3z3rwGWGazDwwyLy0rNqfj"},
        "meta"=>{},
        "name"=>"TEST-MERCHANT-BANK-ACCOUNT",
        "routing_number"=>"121042882",
        "updated_at"=>"2014-04-25T20:09:08.031391Z"}],
     "links"=>
      {"bank_accounts.bank_account_verification"=>
        "/verifications/{bank_accounts.bank_account_verification}",
       "bank_accounts.bank_account_verifications"=>
        "/bank_accounts/{bank_accounts.id}/verifications",
       "bank_accounts.credits"=>"/bank_accounts/{bank_accounts.id}/credits",
       "bank_accounts.customer"=>"/customers/{bank_accounts.customer}",
       "bank_accounts.debits"=>"/bank_accounts/{bank_accounts.id}/debits"}},
   "href"=>"/events/EV754ca810ccb511e3b6ef061e5f402045",
   "id"=>"EV754ca810ccb511e3b6ef061e5f402045",
   "links"=>{},
   "occurred_at"=>"2014-04-25T20:09:08.031000Z",
   "type"=>"bank_account.created"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x007fa93e997c50/lib/balanced/utils.rb:6 (lambda)>}>

% endif
