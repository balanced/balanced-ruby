% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x101ff3528
  @attributes=
   {"links"=>{},
    "callback_statuses"=>
     {"retrying"=>0, "failed"=>0, "succeeded"=>0, "pending"=>0},
    "id"=>"EVde76fcf27ee811e3a16e026ba7c1aba6",
    "type"=>"bank_account_verification.verified",
    "occurred_at"=>"2014-01-16T20:00:37.657000Z",
    "entity"=>
     {"links"=>
       {"bank_account_verifications.bank_account"=>
         "/bank_accounts/{bank_account_verifications.bank_account}"},
      "bank_account_verifications"=>
       [{"meta"=>{},
         "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
         "created_at"=>"2014-01-16T20:00:34.173888Z",
         "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "attempts"=>1,
         "updated_at"=>"2014-01-16T20:00:37.657681Z",
         "attempts_remaining"=>2,
         "verification_status"=>"succeeded",
         "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "deposit_status"=>"succeeded"}]},
    "href"=>"/events/EVde76fcf27ee811e3a16e026ba7c1aba6"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Event:0x101fec408
  @attributes=
   {"links"=>{},
    "callback_statuses"=>
     {"retrying"=>0, "failed"=>0, "succeeded"=>0, "pending"=>0},
    "id"=>"EVde2c8adc7ee811e394d2026ba7cd33d0",
    "type"=>"bank_account_verification.updated",
    "occurred_at"=>"2014-01-16T20:00:37.657000Z",
    "entity"=>
     {"links"=>
       {"bank_account_verifications.bank_account"=>
         "/bank_accounts/{bank_account_verifications.bank_account}"},
      "bank_account_verifications"=>
       [{"meta"=>{},
         "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
         "created_at"=>"2014-01-16T20:00:34.173888Z",
         "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "attempts"=>1,
         "updated_at"=>"2014-01-16T20:00:37.657681Z",
         "attempts_remaining"=>2,
         "verification_status"=>"succeeded",
         "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "deposit_status"=>"succeeded"}]},
    "href"=>"/events/EVde2c8adc7ee811e394d2026ba7cd33d0"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x0000000101fc7478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
