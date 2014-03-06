% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

reversal = Balanced::Reversal.fetch('/reversals/RV5h1LgxTlH1OtHAZEfQbvbH')
reversal.description = 'update this description'
reversal.meta = {
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6',
    'refund.reason' => 'user not happy with product'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x10e3338a8
 @attributes=
  {"transaction_number"=>"RV541-000-1984",
   "failure_reason_code"=>nil,
   "amount"=>3000,
   "links"=>{"credit"=>"CR5j27kuJPX6voI8aokUWsEG", "order"=>nil},
   "failure_reason"=>nil,
   "description"=>"update this description",
   "created_at"=>"2014-03-05T23:27:05.479351Z",
   "id"=>"RV5h1LgxTlH1OtHAZEfQbvbH",
   "href"=>"/reversals/RV5h1LgxTlH1OtHAZEfQbvbH",
   "meta"=>
    {"user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6",
     "refund.reason"=>"user not happy with product"},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:27:10.206389Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "order"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "events"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
