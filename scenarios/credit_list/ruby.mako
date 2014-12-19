% if mode == 'definition':
Balanced::Credit.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-YoVGJWMjOpkCPo6dWMfuiYbBYIB8q2JX')

credits = Balanced::Credit.all
% elif mode == 'response':
[#<Balanced::Credit:0x007fcde19248f0
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"example.com",
    "created_at"=>"2014-12-17T21:25:09.678154Z",
    "currency"=>"USD",
    "description"=>nil,
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/credits/CR7k9iyKSImqoPcvZyPNAcbm",
    "id"=>"CR7k9iyKSImqoPcvZyPNAcbm",
    "links"=>
     {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
      "destination"=>"BA6FZjm2W2mK0DIQibA1sjHv",
      "order"=>nil},
    "meta"=>{},
    "status"=>"pending",
    "transaction_number"=>"CRRWI-1PN-WA3D",
    "updated_at"=>"2014-12-17T21:25:10.040086Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fcde18eee30/lib/balanced/resources/resource.rb:56 (lambda)>,
    "destination"=>
     #<Proc:0x007fcde18ed468/lib/balanced/resources/resource.rb:56 (lambda)>,
    "events"=>
     #<Proc:0x007fcde3af35a8/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde3af2b80/lib/balanced/utils.rb:6 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde3af0d30/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::Credit:0x007fcde3af0ce0
  @attributes=
   {"amount"=>5000,
    "appears_on_statement_as"=>"example.com",
    "created_at"=>"2014-12-17T21:25:06.303877Z",
    "currency"=>"USD",
    "description"=>"Order #12341234",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/credits/CR7gmj42wn3NG2br01RjK1k9",
    "id"=>"CR7gmj42wn3NG2br01RjK1k9",
    "links"=>
     {"customer"=>"CU68iUpvvUwpRpuuBL3u9Slq",
      "destination"=>"CC7bBGoeKPe5DBKWgduZd5Cl",
      "order"=>"OR6c6n11zKSFfjE6kGNKtsE8"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"CRPDQ-Y1M-24PV",
    "updated_at"=>"2014-12-17T21:25:06.683745Z"},
  @hyperlinks=
   {"customer"=>
     #<Proc:0x007fcde13831d0/lib/balanced/resources/resource.rb:56 (lambda)>,
    "destination"=>
     #<Proc:0x007fcde13817e0/lib/balanced/resources/resource.rb:56 (lambda)>,
    "events"=>
     #<Proc:0x007fcde1373a00/lib/balanced/utils.rb:6 (lambda)>,
    "order"=>
     #<Proc:0x007fcde1372060/lib/balanced/resources/resource.rb:56 (lambda)>,
    "reversals"=>
     #<Proc:0x007fcde1370170/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
