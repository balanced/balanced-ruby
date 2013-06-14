% if mode == 'definition':
Balanced::Account.hold(...)

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

buyer = Balanced::Account.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/accounts/AC4FqqEyFyTcd3eHhh2YXL4c')
buyer.hold(
{:amount=>5000, :description=>"Some descriptive text for the debit in the dashboard"}
)

% endif
