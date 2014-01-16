% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x10eb3e368
  @attributes=
   {"links"=>{},
    "id"=>"EVde76fcf27ee811e3a16e026ba7c1aba6",
    "callback_statuses"=>
     {"pending"=>0, "failed"=>0, "succeeded"=>0, "retrying"=>0},
    "type"=>"bank_account_verification.verified",
    "href"=>"/events/EVde76fcf27ee811e3a16e026ba7c1aba6",
    "entity"=>
     {"links"=>
       {"bank_account_verifications.bank_account"=>
         "/bank_accounts/{bank_account_verifications.bank_account}"},
      "bank_account_verifications"=>
       [{"meta"=>{},
         "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
         "attempts"=>1,
         "updated_at"=>"2014-01-16T20:00:37.657681Z",
         "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "deposit_status"=>"succeeded",
         "attempts_remaining"=>2,
         "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "created_at"=>"2014-01-16T20:00:34.173888Z",
         "verification_status"=>"succeeded"}]},
    "occurred_at"=>"2014-01-16T20:00:37.657000Z"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>,
 #<Balanced::Event:0x10eb37f90
  @attributes=
   {"links"=>{},
    "id"=>"EVde2c8adc7ee811e394d2026ba7cd33d0",
    "callback_statuses"=>
     {"pending"=>0, "failed"=>0, "succeeded"=>0, "retrying"=>0},
    "type"=>"bank_account_verification.updated",
    "href"=>"/events/EVde2c8adc7ee811e394d2026ba7cd33d0",
    "entity"=>
     {"links"=>
       {"bank_account_verifications.bank_account"=>
         "/bank_accounts/{bank_account_verifications.bank_account}"},
      "bank_account_verifications"=>
       [{"meta"=>{},
         "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
         "attempts"=>1,
         "updated_at"=>"2014-01-16T20:00:37.657681Z",
         "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "deposit_status"=>"succeeded",
         "attempts_remaining"=>2,
         "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
         "created_at"=>"2014-01-16T20:00:34.173888Z",
         "verification_status"=>"succeeded"}]},
    "occurred_at"=>"2014-01-16T20:00:37.657000Z"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x000000010eb2e030/lib/balanced/utils.rb:6>}>]

% endif
