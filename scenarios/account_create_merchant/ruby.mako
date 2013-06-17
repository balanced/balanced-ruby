% if mode == 'definition':
Balanced::Account.add_bank_account

% else:
require 'balanced'
Balanced.configure('8af725c6d54611e2bf5e026ba7f8ec28')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4erLnXCYoaeyr3tx95WSKc/accounts/AC4FqqEyFyTcd3eHhh2YXL4c')
account.add_bank_account("/v1/bank_accounts/BA4JrubjRE0vqvWWDBB5Kv1w")

% endif
