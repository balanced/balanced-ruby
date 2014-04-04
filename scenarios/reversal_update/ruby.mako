% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

reversal = Balanced::Reversal.fetch('/reversals/RV1g9oXOqXgXYezFUtmqg4S2')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fc09e8ac850
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-01T16:39:26.285756Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV1g9oXOqXgXYezFUtmqg4S2",
   "id"=>"RV1g9oXOqXgXYezFUtmqg4S2",
   "links"=>{"credit"=>"CR1gIgujcGCCERRlL4KwljLG", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV770-348-1487",
   "updated_at"=>"2014-04-01T16:39:30.696628Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fc09b48a298/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fc09b488448/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fc09b4835d8/lib/balanced/utils.rb:6 (lambda)>}>

% endif
