% if mode == 'definition':
Balanced::CardHold.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2fYjkv4Tz5l3iPCtOlgLolmF15XPXlRCr')

holds = Balanced::CardHold.all
% elif mode == 'response':
[#<Balanced::CardHold:0x007fc09cdc11a8
  @attributes=
   {"amount"=>5000,
    "created_at"=>"2014-04-01T16:38:26.958994Z",
    "currency"=>"USD",
    "description"=>"Some descriptive text for the debit in the dashboard",
    "expires_at"=>"2014-04-08T16:38:27.034339Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HLbr4hg4i7Mg2wAEroOwJhk",
    "id"=>"HLbr4hg4i7Mg2wAEroOwJhk",
    "links"=>{"card"=>"CCnjE94RvMPW7RnmLdzIL42", "debit"=>nil},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL608-811-6933",
    "updated_at"=>"2014-04-01T16:38:27.089203Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fc09cdc3660/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fc09cdc2738/lib/balanced/utils.rb:6 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09cdbb0a0/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fc09cdb91d8/lib/balanced/utils.rb:6 (lambda)>}>,
 #<Balanced::CardHold:0x007fc09cdb9188
  @attributes=
   {"amount"=>10000000,
    "created_at"=>"2014-04-01T16:37:55.833629Z",
    "currency"=>"USD",
    "description"=>nil,
    "expires_at"=>"2014-04-08T16:37:56.289170Z",
    "failure_reason"=>nil,
    "failure_reason_code"=>nil,
    "href"=>"/card_holds/HL7r3RJ58D3uWBvoXMnp0Z3i",
    "id"=>"HL7r3RJ58D3uWBvoXMnp0Z3i",
    "links"=>
     {"card"=>"CC7BcAIFEseMKZ3LVF9Uz9Lo", "debit"=>"WD7r7ZcBNuaG0S1dP9aHm7OU"},
    "meta"=>{},
    "status"=>"succeeded",
    "transaction_number"=>"HL694-320-8073",
    "updated_at"=>"2014-04-01T16:37:56.771848Z",
    "voided_at"=>nil},
  @hyperlinks=
   {"card"=>
     #<Proc:0x007fc09cdab600/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debit"=>
     #<Proc:0x007fc09cda9c88/lib/balanced/resources/resource.rb:60 (lambda)>,
    "debits"=>
     #<Proc:0x007fc09cda3d10/lib/balanced/utils.rb:6 (lambda)>,
    "events"=>
     #<Proc:0x007fc09cda1da8/lib/balanced/utils.rb:6 (lambda)>}>]

% endif
