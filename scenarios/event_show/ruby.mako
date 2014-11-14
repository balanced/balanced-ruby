% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

event = Balanced::Event.fetch('/events/EVac079fda6c3411e49b2c020fe4ae3568')

% elif mode == 'response':
#<Balanced::Event:0x007fa0e1506548
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
    #<Proc:0x007fa0e1504478@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>}>

% endif
