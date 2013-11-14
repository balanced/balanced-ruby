% if mode == 'definition':
Balanced::Account.hold

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/accounts/AC6jdot989BbUks8LFIdRVcX')
account.hold(:amount => 1000)

% endif
