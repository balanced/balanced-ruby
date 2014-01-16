% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

reversal = Balanced::Reversal.find('/reversals/RV3Ry99sy9Q2JOr7mgopSKIL')
reversal.description = 'update this description'
reversal.meta = {
    'user.satisfaction' => '6',
    'user.notes' => 'very polite on the phone',
    'refund.reason' => 'user not happy with product'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x107203750
 @attributes=
  {"transaction_number"=>"RV363-215-1339",
   "failure_reason_code"=>nil,
   "currency"=>"USD",
   "created_at"=>"2014-01-16T19:57:57.865569Z",
   "meta"=>
    {"user.satisfaction"=>"6",
     "user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product"},
   "links"=>{"order"=>nil, "credit"=>"CR3PZ3ffp8LdACxx4lFH1Vle"},
   "href"=>"/reversals/RV3Ry99sy9Q2JOr7mgopSKIL",
   "failure_reason"=>nil,
   "description"=>"update this description",
   "id"=>"RV3Ry99sy9Q2JOr7mgopSKIL",
   "amount"=>3000,
   "updated_at"=>"2014-01-16T19:58:03.359362Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"events"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>,
   "credit"=>
    #<Proc:0x00000001074cd0d0@./lib/balanced/resources/resource.rb:61>}>

% endif
