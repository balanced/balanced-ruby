% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

event = Balanced::Event.fetch('/events/EVde76fcf27ee811e3a16e026ba7c1aba6')

% elif mode == 'response':
#<Balanced::Event:0x10861f1f8
 @attributes=
  {"entity"=>
    {"bank_account_verifications"=>
      [{"created_at"=>"2014-01-16T20:00:34.173888Z",
        "attempts_remaining"=>2,
        "verification_status"=>"succeeded",
        "meta"=>{},
        "deposit_status"=>"succeeded",
        "attempts"=>1,
        "links"=>{"bank_account"=>"BA6FDSSC6O5Ip8el1dDjfMz8"},
        "id"=>"BZ6Hm2DoTpcgoDzbIr6dWHpw",
        "href"=>"/verifications/BZ6Hm2DoTpcgoDzbIr6dWHpw",
        "updated_at"=>"2014-01-16T20:00:37.657681Z"}],
     "links"=>
      {"bank_account_verifications.bank_account"=>
        "/bank_accounts/{bank_account_verifications.bank_account}"}},
   "callback_statuses"=>
    {"succeeded"=>0, "pending"=>0, "retrying"=>0, "failed"=>0},
   "occurred_at"=>"2014-01-16T20:00:37.657000Z",
   "type"=>"bank_account_verification.verified",
   "links"=>{},
   "id"=>"EVde76fcf27ee811e3a16e026ba7c1aba6",
   "href"=>"/events/EVde76fcf27ee811e3a16e026ba7c1aba6"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
