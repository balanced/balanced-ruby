% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x007fa7d31b0cd8
  @attributes=
   {"callback_statuses"=>
     {"failed"=>0, "pending"=>0, "retrying"=>0, "succeeded"=>0},
    "entity"=>
     {"customers"=>
       [{"address"=>
          {"city"=>"Nowhere",
           "country_code"=>"USA",
           "line1"=>nil,
           "line2"=>nil,
           "postal_code"=>"90210",
           "state"=>nil},
         "business_name"=>nil,
         "created_at"=>"2014-05-15T00:38:03.617262Z",
         "dob_month"=>2,
         "dob_year"=>1947,
         "ein"=>nil,
         "email"=>"whc@example.org",
         "href"=>"/customers/CU1mlBGw9Cybp1cbj3Lltvcp",
         "id"=>"CU1mlBGw9Cybp1cbj3Lltvcp",
         "links"=>{"destination"=>nil, "source"=>nil},
         "merchant_status"=>"underwritten",
         "meta"=>{},
         "name"=>"William Henry Cavendish III",
         "phone"=>"+16505551212",
         "ssn_last4"=>"xxxx",
         "updated_at"=>"2014-05-15T00:38:03.766910Z"}],
      "links"=>
       {"customers.bank_accounts"=>"/customers/{customers.id}/bank_accounts",
        "customers.card_holds"=>"/customers/{customers.id}/card_holds",
        "customers.cards"=>"/customers/{customers.id}/cards",
        "customers.credits"=>"/customers/{customers.id}/credits",
        "customers.debits"=>"/customers/{customers.id}/debits",
        "customers.destination"=>"/resources/{customers.destination}",
        "customers.disputes"=>"/customers/{customers.id}/disputes",
        "customers.external_accounts"=>
         "/customers/{customers.id}/external_accounts",
        "customers.orders"=>"/customers/{customers.id}/orders",
        "customers.refunds"=>"/customers/{customers.id}/refunds",
        "customers.reversals"=>"/customers/{customers.id}/reversals",
        "customers.source"=>"/resources/{customers.source}",
        "customers.transactions"=>"/customers/{customers.id}/transactions"}},
    "href"=>"/events/EV2cc035eedbc911e38d4f061e5f402045",
    "id"=>"EV2cc035eedbc911e38d4f061e5f402045",
    "links"=>{},
    "occurred_at"=>"2014-05-15T00:38:03.766000Z",
    "type"=>"account.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fa7d31ab968/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Event:0x007fa7d31ab918
  @attributes=
   {"callback_statuses"=>
     {"failed"=>0, "pending"=>0, "retrying"=>0, "succeeded"=>0},
    "entity"=>
     {"bank_accounts"=>
       [{"account_number"=>"xxxxxxxxxxx5555",
         "account_type"=>"checking",
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
         "created_at"=>"2014-05-15T00:38:04.313775Z",
         "fingerprint"=>"6ybvaLUrJy07phK2EQ7pVk",
         "href"=>"/bank_accounts/BA1mL1iIV0OiaTD4IHw51jkp",
         "id"=>"BA1mL1iIV0OiaTD4IHw51jkp",
         "links"=>
          {"bank_account_verification"=>nil,
           "customer"=>"CU1mlBGw9Cybp1cbj3Lltvcp"},
         "meta"=>{},
         "name"=>"TEST-MERCHANT-BANK-ACCOUNT",
         "routing_number"=>"121042882",
         "updated_at"=>"2014-05-15T00:38:04.313777Z"}],
      "links"=>
       {"bank_accounts.bank_account_verification"=>
         "/verifications/{bank_accounts.bank_account_verification}",
        "bank_accounts.bank_account_verifications"=>
         "/bank_accounts/{bank_accounts.id}/verifications",
        "bank_accounts.credits"=>"/bank_accounts/{bank_accounts.id}/credits",
        "bank_accounts.customer"=>"/customers/{bank_accounts.customer}",
        "bank_accounts.debits"=>"/bank_accounts/{bank_accounts.id}/debits"}},
    "href"=>"/events/EV2d2b4e42dbc911e38d4f061e5f402045",
    "id"=>"EV2d2b4e42dbc911e38d4f061e5f402045",
    "links"=>{},
    "occurred_at"=>"2014-05-15T00:38:04.313000Z",
    "type"=>"bank_account.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fa7d31aa608/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
