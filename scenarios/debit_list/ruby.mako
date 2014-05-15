% if mode == 'definition':
Balanced::Debit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2q80HU8DISm2atgm0iRKRVIePzDb34qYp')

debits = Balanced::Debit.all
% elif mode == 'response':
[#<Balanced::Debit:0x007fa7d1968d60
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*example.com",
    "created_at"=>"2014-05-15T00:41:37.159166Z",
    "currency"=>"USD",
    "description"=>"Order #12341234",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD5ewolo9HEVQkv8dcyx87gd",
    "id"=>"WD5ewolo9HEVQkv8dcyx87gd",
    "links"=>
     {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
      "dispute"=>nil,
      "order"=>"OR4R53c8wdUiVEUiegSHpwaN",
      "source"=>"CC4xXVOyMBDdk7FtzG9HwtBv"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W941-130-0831",
    "updated_at"=>"2014-05-15T00:41:40.522871Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa7d1959f90/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa7d1958ff0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa7d1950648/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa7d1940a68/lib/balanced/resources/resource.rb:60 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa7d1930708/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa7d19235f8/lib/balanced/resources/resource.rb:60 (lambda)>}>,
 #<Balanced::Debit:0x007fa7d1923558
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"BAL*Statement text",
    "created_at"=>"2014-05-15T00:41:07.283881Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/debits/WD4GV5z2pEIRZ9cBSuyuykQx",
    "id"=>"WD4GV5z2pEIRZ9cBSuyuykQx",
    "links"=>
     {"customer"=>"CU2L981m9AtPY8pjpGpjnjnf",
      "dispute"=>nil,
      "order"=>nil,
      "source"=>"CC4xXVOyMBDdk7FtzG9HwtBv"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"W235-372-7348",
    "updated_at"=>"2014-05-15T00:41:11.755100Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fa7d191b010/lib/balanced/resources/resource.rb:60 (lambda)>,
    "dispute"=>
     #<Proc:0x007fa7d1919b70/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fa7d1910e58/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fa7d18ed6b0/lib/balanced/utils.rb:6 (lambda)>,
    "refunds"=>
     #<Proc:0x007fa7d18d5fb0/lib/balanced/utils.rb:6 (lambda)>,
    "source"=>
     #<Proc:0x007fa7d18cddd8/lib/balanced/resources/resource.rb:60 (lambda)>}>]

% endif
