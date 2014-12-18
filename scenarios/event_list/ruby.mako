% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x007fcde12d3230
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
     #<Proc:0x007fcde12d1ed0/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Event:0x007fcde12d1e80
  @attributes=
   {"callback_statuses"=>
     {"failed"=>0, "pending"=>1, "retrying"=>0, "succeeded"=>0},
    "entity"=>
     {"disputes"=>
       [{"amount"=>5000,
         "created_at"=>"2014-12-17T21:25:45.321785Z",
         "currency"=>"USD",
         "href"=>"/disputes/DTbbQLxrNf790FmaKsgqRPa",
         "id"=>"DTbbQLxrNf790FmaKsgqRPa",
         "initiated_at"=>"2014-12-17T21:23:52.616968Z",
         "links"=>{"transaction"=>"WD7M75BRYlRsQTImIHFf8O9W"},
         "meta"=>{},
         "reason"=>"fraud",
         "respond_by"=>"2015-01-16T21:23:52.616970Z",
         "status"=>"pending",
         "updated_at"=>"2014-12-17T21:25:45.321787Z"}],
      "links"=>
       {"disputes.events"=>"/disputes/{disputes.id}/events",
        "disputes.transaction"=>"/resources/{disputes.transaction}"}},
    "href"=>"/events/EV05ef6aec863311e4a61d020fe4ae3568",
    "id"=>"EV05ef6aec863311e4a61d020fe4ae3568",
    "links"=>{},
    "occurred_at"=>"2014-12-17T21:25:45.321787Z",
    "type"=>"dispute.created"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x007fcde12d0bc0/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
