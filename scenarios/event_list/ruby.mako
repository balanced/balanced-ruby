% if mode == 'definition':
Balanced::Event.all

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-1AtZm0gArtjcddoDJNaybbDekAIve9Ti6')

events = Balanced::Event.all
% elif mode == 'response':
[#<Balanced::Event:0x1074cc3b0
  @attributes=
   {"callback_statuses"=>
     {"retrying"=>0, "failed"=>0, "succeeded"=>0, "pending"=>0},
    "entity"=>
     {"links"=>
       {"bank_account_verifications.bank_account"=>
         "/bank_accounts/{bank_account_verifications.bank_account}"},
      "bank_account_verifications"=>
       [{"attempts_remaining"=>2,
         "attempts"=>1,
         "deposit_status"=>"succeeded",
         "verification_status"=>"succeeded",
         "created_at"=>"2014-01-16T19:56:28.916613Z",
         "meta"=>{},
         "links"=>{"bank_account"=>"BA2dV6K5x3YJms1ovXGuATRQ"},
         "href"=>"/verifications/BZ2fvxTVMYZpggvJbM6iRNZo",
         "id"=>"BZ2fvxTVMYZpggvJbM6iRNZo",
         "updated_at"=>"2014-01-16T19:56:32.384350Z"}]},
    "occurred_at"=>"2014-01-16T19:56:32.384000Z",
    "links"=>{},
    "href"=>"/events/EV4c3e0aba7ee811e3b2d4026ba7c1aba6",
    "id"=>"EV4c3e0aba7ee811e3b2d4026ba7c1aba6",
    "type"=>"bank_account_verification.verified"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>,
 #<Balanced::Event:0x1074c53a8
  @attributes=
   {"callback_statuses"=>
     {"retrying"=>0, "failed"=>0, "succeeded"=>0, "pending"=>0},
    "entity"=>
     {"links"=>
       {"bank_account_verifications.bank_account"=>
         "/bank_accounts/{bank_account_verifications.bank_account}"},
      "bank_account_verifications"=>
       [{"attempts_remaining"=>2,
         "attempts"=>1,
         "deposit_status"=>"succeeded",
         "verification_status"=>"succeeded",
         "created_at"=>"2014-01-16T19:56:28.916613Z",
         "meta"=>{},
         "links"=>{"bank_account"=>"BA2dV6K5x3YJms1ovXGuATRQ"},
         "href"=>"/verifications/BZ2fvxTVMYZpggvJbM6iRNZo",
         "id"=>"BZ2fvxTVMYZpggvJbM6iRNZo",
         "updated_at"=>"2014-01-16T19:56:32.384350Z"}]},
    "occurred_at"=>"2014-01-16T19:56:32.384000Z",
    "links"=>{},
    "href"=>"/events/EV4bfdf5b07ee811e3b24e026ba7f8ec28",
    "id"=>"EV4bfdf5b07ee811e3b24e026ba7f8ec28",
    "type"=>"bank_account_verification.updated"},
  @hyperlinks=
   {"callbacks"=>
     #<Proc:0x00000001074b5548@/Users/ben/Development/ruby/balanced-ruby/lib/balanced/utils.rb:6>}>]

% endif
