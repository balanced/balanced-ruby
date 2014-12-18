% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

event = Balanced::Event.fetch('/events/EV061a4b86863311e4ab84020fe4ae3568')

% elif mode == 'response':
#<Balanced::Event:0x007fcde135ac30
 @attributes=
  {"callback_statuses"=>
    {"failed"=>0, "pending"=>1, "retrying"=>0, "succeeded"=>0},
   "entity"=>
    {"debits"=>
      [{"amount"=>5000,
        "appears_on_statement_as"=>"BAL*Statement text",
        "created_at"=>"2014-12-17T21:25:34.550152Z",
        "currency"=>"USD",
        "description"=>"Some descriptive text for the debit in the dashboard",
        "failure_reason"=>nil,
        "failure_reason_code"=>nil,
        "href"=>"/debits/WD7M75BRYlRsQTImIHFf8O9W",
        "id"=>"WD7M75BRYlRsQTImIHFf8O9W",
        "links"=>
         {"card_hold"=>"HL7M4ZNQjlJRZhhMJGPBVCUM",
          "customer"=>nil,
          "dispute"=>"DTbbQLxrNf790FmaKsgqRPa",
          "order"=>nil,
          "source"=>"CC7Lwi6mzKkqwXrIg5UY1BE9"},
        "meta"=>{},
        "status"=>"succeeded",
        "transaction_number"=>"WMWY-ZDJ-0RIZ",
        "updated_at"=>"2014-12-17T21:25:35.221519Z"}],
     "links"=>
      {"debits.card_hold"=>"/holds/{debits.card_hold}",
       "debits.customer"=>"/customers/{debits.customer}",
       "debits.dispute"=>"/disputes/{debits.dispute}",
       "debits.events"=>"/debits/{debits.id}/events",
       "debits.order"=>"/orders/{debits.order}",
       "debits.refunds"=>"/debits/{debits.id}/refunds",
       "debits.source"=>"/resources/{debits.source}"}},
   "href"=>"/events/EV061a4b86863311e4ab84020fe4ae3568",
   "id"=>"EV061a4b86863311e4ab84020fe4ae3568",
   "links"=>{},
   "occurred_at"=>"2014-12-17T21:25:35.221519Z",
   "type"=>"debit.succeeded"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x007fcde1359948/lib/balanced/utils.rb:6 (lambda)>}>

% endif
