% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

reversal = Balanced::Reversal.fetch('/reversals/RV5h1LgxTlH1OtHAZEfQbvbH')
reversal.description = 'update this description'
reversal.meta = {
    'user.satisfaction' => '6',
    'user.notes' => 'very polite on the phone',
    'refund.reason' => 'user not happy with product'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x10672b940
 @attributes=
  {"status"=>"succeeded",
   "links"=>{"order"=>nil, "credit"=>"CR5j27kuJPX6voI8aokUWsEG"},
   "currency"=>"USD",
   "created_at"=>"2014-03-05T23:27:05.479351Z",
   "href"=>"/reversals/RV5h1LgxTlH1OtHAZEfQbvbH",
   "description"=>"update this description",
   "amount"=>3000,
   "transaction_number"=>"RV541-000-1984",
   "id"=>"RV5h1LgxTlH1OtHAZEfQbvbH",
   "failure_reason_code"=>nil,
   "updated_at"=>"2014-03-05T23:27:10.206389Z",
   "meta"=>
    {"user.satisfaction"=>"6",
     "user.notes"=>"very polite on the phone",
     "refund.reason"=>"user not happy with product"},
   "failure_reason"=>nil},
 @hyperlinks=
  {"events"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "order"=>
    #<Proc:0x000000010616ce00/lib/balanced/utils.rb:6>,
   "credit"=>
    #<Proc:0x0000000106184c80@./lib/balanced/resources/resource.rb:60>}>

% endif
