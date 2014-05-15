% if mode == 'definition':
Balanced::BankAccount.debit

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA1W9SQLf5YRaGbUGiNIO2fb')
bank_account.debit(
  :amount => 5000,
  :appears_on_statement_as => 'Statement text',
  :description => 'Some descriptive text for the debit in the dashboard'
)

% elif mode == 'response':
#<Balanced::Debit:0x007fa7d1d437c8
 @attributes=
  {"amount"=>5000,
   "appears_on_statement_as"=>"BAL*Statement text",
   "created_at"=>"2014-05-15T00:39:29.277773Z",
   "currency"=>"USD",
   "description"=>"Some descriptive text for the debit in the dashboard",
   "failure_reason"=>nil,
   "failure_reason_code"=>nil,
   "href"=>"/debits/WD2UGQIxoTJkklZqAj2lpR9X",
   "id"=>"WD2UGQIxoTJkklZqAj2lpR9X",
   "links"=>
    {"customer"=>nil,
     "dispute"=>nil,
     "order"=>nil,
     "source"=>"BA1W9SQLf5YRaGbUGiNIO2fb"},
   "meta"=>{},
   "status"=>"succeeded",
   "transaction_number"=>"W708-603-3376",
   "updated_at"=>"2014-05-15T00:39:31.007857Z"},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x007fa7d1d31c80/lib/balanced/utils.rb:6 (lambda)>,
   "dispute"=>
    #<Proc:0x007fa7d1d2be98/lib/balanced/utils.rb:6 (lambda)>,
   "events"=>
    #<Proc:0x007fa7d1d28c70/lib/balanced/utils.rb:6 (lambda)>,
   "order"=>
    #<Proc:0x007fa7d1d231f8/lib/balanced/utils.rb:6 (lambda)>,
   "refunds"=>
    #<Proc:0x007fa7d1d19ce8/lib/balanced/utils.rb:6 (lambda)>,
   "source"=>
    #<Proc:0x007fa7d1d139d8/lib/balanced/resources/resource.rb:60 (lambda)>}>

% endif
