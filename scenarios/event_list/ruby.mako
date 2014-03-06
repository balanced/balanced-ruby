% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x1066a3dd8
  @attributes=
   {"callback_statuses"=>
     {"succeeded"=>0, "failed"=>0, "retrying"=>0, "pending"=>0},
    "type"=>"account.created",
    "links"=>{},
    "href"=>"/events/EV7838c0f6a4bd11e3937f060e77eca47a",
    "id"=>"EV7838c0f6a4bd11e3937f060e77eca47a",
    "occurred_at"=>"2014-03-05T23:25:33.823000Z",
    "entity"=>
     {"links"=>
       {"customers.debits"=>"/customers/{customers.id}/debits",
        "customers.refunds"=>"/customers/{customers.id}/refunds",
        "customers.destination"=>"/resources/{customers.destination}",
        "customers.transactions"=>"/customers/{customers.id}/transactions",
        "customers.orders"=>"/customers/{customers.id}/orders",
        "customers.cards"=>"/customers/{customers.id}/cards",
        "customers.reversals"=>"/customers/{customers.id}/reversals",
        "customers.credits"=>"/customers/{customers.id}/credits",
        "customers.card_holds"=>"/customers/{customers.id}/card_holds",
        "customers.bank_accounts"=>"/customers/{customers.id}/bank_accounts",
        "customers.external_accounts"=>
         "/customers/{customers.id}/external_accounts",
        "customers.source"=>"/resources/{customers.source}"},
      "customers"=>
       [{"email"=>"whc@example.org",
         "address"=>
          {"line2"=>nil,
           "line1"=>nil,
           "country_code"=>"USA",
           "postal_code"=>"90210",
           "city"=>"Nowhere",
           "state"=>nil},
         "ssn_last4"=>"xxxx",
         "name"=>"William Henry Cavendish III",
         "links"=>{"source"=>nil, "destination"=>nil},
         "created_at"=>"2014-03-05T23:25:33.699184Z",
         "href"=>"/customers/CU3EOo1JQiusqvWMhgNOKCQW",
         "id"=>"CU3EOo1JQiusqvWMhgNOKCQW",
         "phone"=>"+16505551212",
         "ein"=>nil,
         "dob_month"=>2,
         "updated_at"=>"2014-03-05T23:25:33.823693Z",
         "meta"=>{},
         "merchant_status"=>"underwritten",
         "business_name"=>nil,
         "dob_year"=>1947}]}},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>,
 #<Balanced::Event:0x10669fa58
  @attributes=
   {"callback_statuses"=>
     {"succeeded"=>0, "failed"=>0, "retrying"=>0, "pending"=>0},
    "type"=>"bank_account.created",
    "links"=>{},
    "href"=>"/events/EV78640b08a4bd11e3937f060e77eca47a",
    "id"=>"EV78640b08a4bd11e3937f060e77eca47a",
    "occurred_at"=>"2014-03-05T23:25:34.017000Z",
    "entity"=>
     {"links"=>
       {"bank_accounts.bank_account_verification"=>
         "/verifications/{bank_accounts.bank_account_verification}",
        "bank_accounts.credits"=>"/bank_accounts/{bank_accounts.id}/credits",
        "bank_accounts.customer"=>"/customers/{bank_accounts.customer}",
        "bank_accounts.bank_account_verifications"=>
         "/bank_accounts/{bank_accounts.id}/verifications",
        "bank_accounts.debits"=>"/bank_accounts/{bank_accounts.id}/debits"},
      "bank_accounts"=>
       [{"address"=>
          {"line2"=>nil,
           "line1"=>nil,
           "country_code"=>nil,
           "postal_code"=>nil,
           "city"=>nil,
           "state"=>nil},
         "can_debit"=>true,
         "name"=>"TEST-MERCHANT-BANK-ACCOUNT",
         "links"=>
          {"bank_account_verification"=>nil,
           "customer"=>"CU3EOo1JQiusqvWMhgNOKCQW"},
         "bank_name"=>"WELLS FARGO BANK NA",
         "account_type"=>"CHECKING",
         "created_at"=>"2014-03-05T23:25:34.017557Z",
         "routing_number"=>"121042882",
         "href"=>"/bank_accounts/BA3EZthJjXI5E73dSq9j10sG",
         "can_credit"=>true,
         "id"=>"BA3EZthJjXI5E73dSq9j10sG",
         "fingerprint"=>"6ybvaLUrJy07phK2EQ7pVk",
         "updated_at"=>"2014-03-05T23:25:34.017561Z",
         "meta"=>{},
         "account_number"=>"xxxxxxxxxxx5555"}]}},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>}>]

% endif
