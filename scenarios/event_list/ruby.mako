% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1ByQgRpcQLTwmOhCBUofyIHm0r96qPm8s')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x007fb793de3328
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
         "created_at"=>"2014-04-17T22:38:35.705116Z",
         "dob_month"=>2,
         "dob_year"=>1947,
         "ein"=>nil,
         "email"=>"whc@example.org",
         "href"=>"/customers/CU7EYury1BOjhbW83bqFKfVr",
         "id"=>"CU7EYury1BOjhbW83bqFKfVr",
         "links"=>{"destination"=>nil, "source"=>nil},
         "merchant_status"=>"underwritten",
         "meta"=>{},
         "name"=>"William Henry Cavendish III",
         "phone"=>"+16505551212",
         "ssn_last4"=>"xxxx",
         "updated_at"=>"2014-04-17T22:38:35.758188Z"}],
      "links"=>
       {"customers.bank_accounts"=>"/customers/{customers.id}/bank_accounts",
        "customers.card_holds"=>"/customers/{customers.id}/card_holds",
        "customers.cards"=>"/customers/{customers.id}/cards",
        "customers.credits"=>"/customers/{customers.id}/credits",
        "customers.debits"=>"/customers/{customers.id}/debits",
        "customers.destination"=>"/resources/{customers.destination}",
        "customers.external_accounts"=>
         "/customers/{customers.id}/external_accounts",
        "customers.orders"=>"/customers/{customers.id}/orders",
        "customers.refunds"=>"/customers/{customers.id}/refunds",
        "customers.reversals"=>"/customers/{customers.id}/reversals",
        "customers.source"=>"/resources/{customers.source}",
        "customers.transactions"=>"/customers/{customers.id}/transactions"}},
    "href"=>"/events/EVfbb73252c68011e3bb20061e5f402045",
    "id"=>"EVfbb73252c68011e3bb20061e5f402045",
    "links"=>{},
    "occurred_at"=>"2014-04-17T22:38:35.758000Z",
    "type"=>"account.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fb793de1fa0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Event:0x007fb793de1f50
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
         "created_at"=>"2014-04-17T22:38:35.932190Z",
         "fingerprint"=>"6ybvaLUrJy07phK2EQ7pVk",
         "href"=>"/bank_accounts/BA7F2RcUvmWA5HA7ot6o33dH",
         "id"=>"BA7F2RcUvmWA5HA7ot6o33dH",
         "links"=>
          {"bank_account_verification"=>nil,
           "customer"=>"CU7EYury1BOjhbW83bqFKfVr"},
         "meta"=>{},
         "name"=>"TEST-MERCHANT-BANK-ACCOUNT",
         "routing_number"=>"121042882",
         "updated_at"=>"2014-04-17T22:38:35.932192Z"}],
      "links"=>
       {"bank_accounts.bank_account_verification"=>
         "/verifications/{bank_accounts.bank_account_verification}",
        "bank_accounts.bank_account_verifications"=>
         "/bank_accounts/{bank_accounts.id}/verifications",
        "bank_accounts.credits"=>"/bank_accounts/{bank_accounts.id}/credits",
        "bank_accounts.customer"=>"/customers/{bank_accounts.customer}",
        "bank_accounts.debits"=>"/bank_accounts/{bank_accounts.id}/debits"}},
    "href"=>"/events/EVfbda325cc68011e3bb20061e5f402045",
    "id"=>"EVfbda325cc68011e3bb20061e5f402045",
    "links"=>{},
    "occurred_at"=>"2014-04-17T22:38:35.932000Z",
    "type"=>"bank_account.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fb793de0c68/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
