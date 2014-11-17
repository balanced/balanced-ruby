% if mode == 'definition':
Balanced::Card.hold
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

card = Balanced::Card.fetch('/cards/CC33DRVrekWpiHYjxSdVuqWc')
card.hold(
  :amount => 5000,
  :order => '/orders/OR5sl2RJVnbwEf45nq5eATdz'
)
% elif mode == 'response':
#<Balanced::CardHold:0x007fa0e1afcb28
 @attributes=
  {"amount"=>5000,
   "created_at"=>"2014-11-14T19:33:51.879868Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "expires_at"=>"2014-11-21T19:33:52.579614Z",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/card_holds/HLFpnZtmuIk0mVJKtYuaWSQ",
   "id"=>"HLFpnZtmuIk0mVJKtYuaWSQ",
   "links"=>
    {"card"=>"CC33DRVrekWpiHYjxSdVuqWc",
     "debit"=>nil,
     "order"=>"OR5sl2RJVnbwEf45nq5eATdz"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"HLS8T-X5S-C9TP",
   "updated_at"=>"2014-11-14T19:33:52.717417Z",
   "voided_at"=>nil},
 @hyperlinks=
  {"card"=>
    #<Proc:0x007fa0e1b01f38@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "debit"=>
    #<Proc:0x007fa0e1b01088@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "debits"=>
    #<Proc:0x007fa0e1b06150@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e1b0b1f0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e1b08ef0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
