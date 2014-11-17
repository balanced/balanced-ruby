% if mode == 'definition':
Balanced::Debit.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-25ZY8HQwZPuQtDecrxb671LilUya5t5G0')

debit = Balanced::Debit.fetch('/debits/WD3nVmuDYvCWCox0YECGc6b3')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% elif mode == 'response':
#<Balanced::Debit:0x007fa0e15a64d0
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-11-14T19:29:12.233424Z",
   "currency"=>"USD",
   "description"=>"New description for debit",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD3nVmuDYvCWCox0YECGc6b3",
   "id"=>"WD3nVmuDYvCWCox0YECGc6b3",
   "links"=>
    {"card_hold"=>"HL3nTP3DHaaeZZmAKdkOCBcp",
     "customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"CC33DRVrekWpiHYjxSdVuqWc"},
   "meta"=>{"anykey"=>"valuegoeshere", "facebook.id"=>"1234567890"},
   "status"=>"succeeded",
   "transaction_number"=>"WOSU-O30-BSKO",
   "updated_at"=>"2014-11-14T19:29:59.686967Z"},
 @hyperlinks=
  {"card_hold"=>
    #<Proc:0x007fa0e15a3b90@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>,
   "customer"=>
    #<Proc:0x007fa0e15a3050@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa0e15a1fc0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa0e159f4f0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa0e159e9b0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa0e159be90@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa0e1599aa0@/usr/local/rvm/rubies/ruby-1.9.3-p392/lib/ruby/gems/1.9.1/gems/balanced-1.1.1/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
