% if mode == 'definition':
Balanced::Refund.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2ADpvITfpgBn8uBzEGsQ2bIgWaftUWiul')

refunds = Balanced::Refund.all
% elif mode == 'response':
[#<Balanced::Refund:0x007fefd9812088
  @attributes=
   {"amount"=>3000,
    "created_at"=>"2014-03-06T19:23:46.176138Z",
    "currency"=>"USD",
    "description"=>"Refund for Order #1111",
    "href"=>"/refunds/RF6HsnqferSuES9VZEWrthG2",
    "id"=>"RF6HsnqferSuES9VZEWrthG2",
    "links"=>
     {"debit"=>"WD6BKYhbRzlRhfKSE1DcpqS5", "dispute"=>nil, "order"=>nil},
    "meta"=>
     {"fulfillment.item.condition"=>"OK",
      "merchant.feedback"=>"positive",
      "user.refund_reason"=>"not happy with product"},
    "status"=>"succeeded",
    "transaction_number"=>"RF348-549-7723",
    "updated_at"=>"2014-03-06T19:23:48.234584Z"},
  @hyperlinks=
   {"debit"=>
     #<Proc:0x007fefd9810530/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fefd9837b58/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fefd9835d08/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fefd9835330/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
