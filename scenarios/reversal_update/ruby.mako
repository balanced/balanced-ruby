% if mode == 'definition':
Balanced::Reversal.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV')

reversal = Balanced::Reversal.fetch('/reversals/RV6qrEOTouLeIJuPu4s73Ra1')
reversal.description = 'update this description'
reversal.meta = {
    'refund.reason' => 'user not happy with product',
    'user.notes' => 'very polite on the phone',
    'user.satisfaction' => '6'
}
reversal.save

% elif mode == 'response':
#<Balanced::Reversal:0x007fa6d34cd2a0
 @attributes=
  {"amount"=>3000,
   "created_at"=>"2014-04-25T20:18:55.008280Z",
   "currency"=>"USD",
   "description"=>"update this description",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/reversals/RV6qrEOTouLeIJuPu4s73Ra1",
   "id"=>"RV6qrEOTouLeIJuPu4s73Ra1",
   "links"=>{"credit"=>"CR6nBcaGvGc4dtflEB1bjKBP", "order"=>nil},
   "meta"=>
    {"refund.reason"=>"user not happy with product",
     "user.notes"=>"very polite on the phone",
     "user.satisfaction"=>"6"},
   "status"=>"succeeded",
   "transaction_number"=>"RV296-883-6069",
   "updated_at"=>"2014-04-25T20:19:01.228936Z"},
 @hyperlinks=
  {"credit"=>
    #<Proc:0x007fa6d34c64a0/lib/balanced/resources/resource.rb:60 (lambda)>,
   "events"=>
    #<Proc:0x007fa6d34bc1d0/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa6d34b5e20/lib/balanced/utils.rb:6 (lambda)>}>

% endif
