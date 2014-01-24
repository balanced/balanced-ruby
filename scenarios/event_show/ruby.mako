% if mode == 'definition':
Balanced::Event.fetch

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

event = Balanced::Event.fetch('/events/EV64ecf7cc852011e3a0ed026ba7c1aba6')

% elif mode == 'response':
#<Balanced::Event:0x1087924b8
 @attributes=
  {"links"=>{},
   "type"=>"bank_account_verification.verified",
   "callback_statuses"=>
    {"failed"=>0, "succeeded"=>0, "retrying"=>0, "pending"=>0},
   "occurred_at"=>"2014-01-24T17:53:12.552000Z",
   "href"=>"/events/EV64ecf7cc852011e3a0ed026ba7c1aba6",
   "entity"=>
    {"links"=>
      {"bank_account_verifications.bank_account"=>
        "/bank_accounts/{bank_account_verifications.bank_account}"},
     "bank_account_verifications"=>
      [{"links"=>{"bank_account"=>"BA2YEZjgBPUBzXgxXfjUeenw"},
        "meta"=>{},
        "deposit_status"=>"succeeded",
        "attempts"=>1,
        "created_at"=>"2014-01-24T17:53:09.290866Z",
        "href"=>"/verifications/BZ30hb4BvSmoUMZiDdIMyz8K",
        "attempts_remaining"=>2,
        "verification_status"=>"succeeded",
        "updated_at"=>"2014-01-24T17:53:12.552232Z",
        "id"=>"BZ30hb4BvSmoUMZiDdIMyz8K"}]},
   "id"=>"EV64ecf7cc852011e3a0ed026ba7c1aba6"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
