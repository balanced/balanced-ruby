% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

reversal = Balanced::Reversal.fetch('/reversals/RV7BYCqyLOKwcWigapAoGWdr')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fa7d40df150
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-05-15T00:43:48.266113Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV7BYCqyLOKwcWigapAoGWdr",
   "id"=>"RV7BYCqyLOKwcWigapAoGWdr",
   "links"=>{"credit"=>"CR7ushK6kWjPJYdh24QoM1A9", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV689-626-0403",
   "updated_at"=>"2014-05-15T00:43:58.209158Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fa7d40dd0a8/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d40d70e0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d40d5678/lib/balanced/utils.rb:6 (lambda)>}>

% endif
