% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1kvvievk0Qqw5wQPsrlM9g7wQwNe62cyc')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x007fdc9d1787a8
  @attributes=
   {"callback_statuses"=>
     {"failed"=>0, "pending"=>0, "retrying"=>0, "succeeded"=>0},
    "entity"=>
     {"customers"=>
       [{"address"=>
          {"city"=>nil,
           "country_code"=>nil,
           "line1"=>nil,
           "line2"=>nil,
           "postal_code"=>nil,
           "state"=>nil},
         "business_name"=>nil,
         "created_at"=>"2014-01-27T22:55:50.253066Z",
         "dob_month"=>nil,
         "dob_year"=>nil,
         "ein"=>nil,
         "email"=>nil,
         "href"=>"/customers/CU1iDnBalzHoZg47Np92rNrV",
         "id"=>"CU1iDnBalzHoZg47Np92rNrV",
         "links"=>{"destination"=>nil, "source"=>nil},
         "merchant_status"=>"no-match",
         "meta"=>{},
         "name"=>nil,
         "phone"=>nil,
         "ssn_last4"=>nil,
         "updated_at"=>"2014-01-27T22:55:50.767858Z"}],
      "links"=>
       {"customers.bank_accounts"=>"/customers/{customers.id}/bank_accounts",
        "customers.card_holds"=>"/customers/{customers.id}/card_holds",
        "customers.cards"=>"/customers/{customers.id}/cards",
        "customers.credits"=>"/customers/{customers.id}/credits",
        "customers.debits"=>"/customers/{customers.id}/debits",
        "customers.destination"=>"/resources/{customers.destination}",
        "customers.orders"=>"/customers/{customers.id}/orders",
        "customers.refunds"=>"/customers/{customers.id}/refunds",
        "customers.reversals"=>"/customers/{customers.id}/reversals",
        "customers.source"=>"/resources/{customers.source}",
        "customers.transactions"=>"/customers/{customers.id}/transactions"}},
    "href"=>"/events/EV2abbb98487a611e3a86f026ba7d31e6f",
    "id"=>"EV2abbb98487a611e3a86f026ba7d31e6f",
    "links"=>{},
    "occurred_at"=>"2014-01-27T22:55:50.767000Z",
    "type"=>"account.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fdc9d17a968/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
