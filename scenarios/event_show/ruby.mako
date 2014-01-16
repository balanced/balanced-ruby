% if mode == 'definition':
Balanced::Event.find

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2uzz5nxHt8C5EEEmBN2Ae1j59c9Kl23t7')

event = Balanced::Event.find('/events/EV85f84e507ee311e3bd42026ba7f8ec28')

% elif mode == 'response':
#<Balanced::Event:0x1087658a0
 @attributes=
  {"callback_statuses"=>
    {"retrying"=>0, "pending"=>0, "succeeded"=>0, "failed"=>0},
   "id"=>"EV85f84e507ee311e3bd42026ba7f8ec28",
   "occurred_at"=>"2014-01-16T19:22:21.745000Z",
   "links"=>{},
   "href"=>"/events/EV85f84e507ee311e3bd42026ba7f8ec28",
   "entity"=>
    {"links"=>
      {"bank_account_verifications.bank_account"=>
        "/bank_accounts/{bank_account_verifications.bank_account}"},
     "bank_account_verifications"=>
      [{"created_at"=>"2014-01-16T19:22:17.208147Z",
        "meta"=>{},
        "updated_at"=>"2014-01-16T19:22:21.745326Z",
        "id"=>"BZ3Zea8yCgh4urgmuyiiIdgk",
        "links"=>{"bank_account"=>"BA3XWM0MHGvNnTyZFpBA9tlK"},
        "href"=>"/verifications/BZ3Zea8yCgh4urgmuyiiIdgk",
        "attempts_remaining"=>2,
        "verification_status"=>"succeeded",
        "deposit_status"=>"succeeded",
        "attempts"=>1}]},
   "type"=>"bank_account_verification.verified"},
 @hyperlinks=
  {"callbacks"=>
    #<Proc:0x00000001087d2478@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>

% endif
