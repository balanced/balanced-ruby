% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

event = Balanced::Event.fetch('/events/EVa26caeeea56411e3838802219cc35fd9')

% elif mode == 'response':
#<Balanced::Event:0x007fa4e2919ba8
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
        "created_at"=>"2014-03-06T19:22:12.312268Z",
        "dob_month"=>2,
        "dob_year"=>1947,
        "ein"=>nil,
        "email"=>"whc@example.org",
        "href"=>"/customers/CU4Wt8xSbREzV2NWtdVAFGeR",
        "id"=>"CU4Wt8xSbREzV2NWtdVAFGeR",
        "links"=>{"destination"=>nil, "source"=>nil},
        "merchant_status"=>"underwritten",
        "meta"=>{},
        "name"=>"William Henry Cavendish III",
        "phone"=>"+16505551212",
        "ssn_last4"=>"xxxx",
        "updated_at"=>"2014-03-06T19:22:12.718847Z"}],
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
   "href"=>"/events/EVa26caeeea56411e3838802219cc35fd9",
   "id"=>"EVa26caeeea56411e3838802219cc35fd9",
   "links"=>{},
   "occurred_at"=>"2014-03-06T19:22:12.718000Z",
   "type"=>"account.created"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x007fa4e291a1c0/lib/balanced/utils.rb:6 (lambda)>}>

% endif
