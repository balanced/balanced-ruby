% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

event = Balanced::Event.fetch('/events/EV7838c0f6a4bd11e3937f060e77eca47a')

% elif mode == 'response':
#<Balanced::Event:0x10e42c548
 @attributes=
  {"links"=>{},
   "occurred_at"=>"2014-03-05T23:25:33.823000Z",
   "callback_statuses"=>
    {"failed"=>0, "retrying"=>0, "pending"=>0, "succeeded"=>0},
   "id"=>"EV7838c0f6a4bd11e3937f060e77eca47a",
   "href"=>"/events/EV7838c0f6a4bd11e3937f060e77eca47a",
   "entity"=>
    {"links"=>
      {"customers.card_holds"=>"/customers/{customers.id}/card_holds",
       "customers.debits"=>"/customers/{customers.id}/debits",
       "customers.transactions"=>"/customers/{customers.id}/transactions",
       "customers.orders"=>"/customers/{customers.id}/orders",
       "customers.cards"=>"/customers/{customers.id}/cards",
       "customers.bank_accounts"=>"/customers/{customers.id}/bank_accounts",
       "customers.destination"=>"/resources/{customers.destination}",
       "customers.external_accounts"=>
        "/customers/{customers.id}/external_accounts",
       "customers.source"=>"/resources/{customers.source}",
       "customers.reversals"=>"/customers/{customers.id}/reversals",
       "customers.refunds"=>"/customers/{customers.id}/refunds",
       "customers.credits"=>"/customers/{customers.id}/credits"},
     "customers"=>
      [{"dob_month"=>2,
        "ein"=>nil,
        "links"=>{"destination"=>nil, "source"=>nil},
        "name"=>"William Henry Cavendish III",
        "merchant_status"=>"underwritten",
        "email"=>"whc@example.org",
        "created_at"=>"2014-03-05T23:25:33.699184Z",
        "id"=>"CU3EOo1JQiusqvWMhgNOKCQW",
        "href"=>"/customers/CU3EOo1JQiusqvWMhgNOKCQW",
        "dob_year"=>1947,
        "phone"=>"+16505551212",
        "meta"=>{},
        "updated_at"=>"2014-03-05T23:25:33.823693Z",
        "business_name"=>nil,
        "address"=>
         {"country_code"=>"USA",
          "line2"=>nil,
          "line1"=>nil,
          "state"=>nil,
          "city"=>"Nowhere",
          "postal_code"=>"90210"},
        "ssn_last4"=>"xxxx"}]},
   "type"=>"account.created"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
