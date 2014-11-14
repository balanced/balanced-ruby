% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x007fa0e1543d30
  @attributes=
   {"callback_statuses"=>
     {"failed"=>0, "pending"=>1, "retrying"=>0, "succeeded"=>0},
    "entity"=>
     {"cards"=>
       [{"address"=>
          {"city"=>nil,
           "country_code"=>nil,
           "line1"=>nil,
           "line2"=>nil,
           "postal_code"=>nil,
           "state"=>nil},
         "avs_postal_match"=>nil,
         "avs_result"=>nil,
         "avs_street_match"=>nil,
         "bank_name"=>"BANK OF HAWAII",
         "brand"=>"MasterCard",
         "can_credit"=>false,
         "can_debit"=>true,
         "category"=>"other",
         "created_at"=>"2014-11-14T19:28:54.173121Z",
         "cvv"=>"xxx",
         "cvv_match"=>"yes",
         "cvv_result"=>"Match",
         "expiration_month"=>12,
         "expiration_year"=>2020,
         "fingerprint"=>
          "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
         "href"=>"/cards/CC33DRVrekWpiHYjxSdVuqWc",
         "id"=>"CC33DRVrekWpiHYjxSdVuqWc",
         "is_verified"=>true,
         "links"=>{"customer"=>nil},
         "meta"=>
          {"facebook.user_id"=>"0192837465",
           "my-own-customer-id"=>"12345",
           "twitter.id"=>"1234987650"},
         "name"=>nil,
         "number"=>"xxxxxxxxxxxx5100",
         "type"=>"credit",
         "updated_at"=>"2014-11-14T19:28:59.213581Z"}],
      "links"=>
       {"cards.card_holds"=>"/cards/{cards.id}/card_holds",
        "cards.customer"=>"/customers/{cards.customer}",
        "cards.debits"=>"/cards/{cards.id}/debits",
        "cards.disputes"=>"/cards/{cards.id}/disputes"}},
    "href"=>"/events/EV6482527c6c3411e481fc02e66206bf80",
    "id"=>"EV6482527c6c3411e481fc02e66206bf80",
    "links"=>{},
    "occurred_at"=>"2014-11-14T19:28:54.173123Z",
    "type"=>"card.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fa0e1541af8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Event:0x007fa0e1541aa8
  @attributes=
   {"callback_statuses"=>
     {"failed"=>0, "pending"=>1, "retrying"=>0, "succeeded"=>0},
    "entity"=>
     {"debits"=>
       [{"amount"=>5000,
         "appears_on_statement_as"=>"BAL*ShowsUpOnStmt",
         "created_at"=>"2014-11-14T19:28:39.577643Z",
         "currency"=>"USD",
         "description"=>"Some descriptive text for the debit in the dashboard",
         "failure_reason"=>nil,
         "failure_reason_code"=>nil,
         "href"=>"/debits/WD2Ne8ZvXt0FRckpr1JQ1eRq",
         "id"=>"WD2Ne8ZvXt0FRckpr1JQ1eRq",
         "links"=>
          {"card_hold"=>"HL2F8jlnySjVKidwfXgBYZMY",
           "customer"=>nil,
           "dispute"=>nil,
           "order"=>nil,
           "source"=>"CC2E1bHjwNbYtzUcTAmH4kEM"},
         "meta"=>{"holding.for"=>"user1", "meaningful.key"=>"some.value"},
         "status"=>"succeeded",
         "transaction_number"=>"W8L2-II6-ANHK",
         "updated_at"=>"2014-11-14T19:28:44.346481Z"}],
      "links"=>
       {"debits.card_hold"=>"/holds/{debits.card_hold}",
        "debits.customer"=>"/customers/{debits.customer}",
        "debits.dispute"=>"/disputes/{debits.dispute}",
        "debits.events"=>"/debits/{debits.id}/events",
        "debits.order"=>"/orders/{debits.order}",
        "debits.refunds"=>"/debits/{debits.id}/refunds",
        "debits.source"=>"/resources/{debits.source}"}},
    "href"=>"/events/EVac079fda6c3411e49b2c020fe4ae3568",
    "id"=>"EVac079fda6c3411e49b2c020fe4ae3568",
    "links"=>{},
    "occurred_at"=>"2014-11-14T19:28:44.346481Z",
    "type"=>"debit.succeeded"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fa0e153fbb8@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
