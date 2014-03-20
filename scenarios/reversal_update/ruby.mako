% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-KpEgsMpSFwzAvYlXHB93rcjPDKYFviQ1')

reversal = Balanced::Reversal.fetch('/reversals/RVmcR4FZ5HLHkFEg38wsf9B')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fbaa50c4d30
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-03-20T18:18:33.232301Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RVmcR4FZ5HLHkFEg38wsf9B",
   "id"=>"RVmcR4FZ5HLHkFEg38wsf9B",
   "links"=>{"credit"=>"CRl8vsIfwYjpcYnDk0K0ILQ", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV397-485-2419",
   "updated_at"=>"2014-03-20T18:18:39.424242Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fbaa509ee28/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fbaa509cfb0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fbaa509c600/lib/balanced/utils.rb:6 (lambda)>}>

% endif
