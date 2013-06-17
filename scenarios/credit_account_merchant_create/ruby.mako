% if mode == 'definition':
Balanced::Account.credit()

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

marketplace = Balanced::Marketplace.my_marketplace

merchant = Balanced::Account.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/accounts/AC4FqqEyFyTcd3eHhh2YXL4c')
merchant.credit('100')
% endif
