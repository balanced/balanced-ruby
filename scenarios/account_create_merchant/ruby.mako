% if mode == 'definition':
Balanced::Account.add_bank_account

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/accounts/CU5U8N8xXdkTgLmmV3wSozLc')
account.add_bank_account("/v1/bank_accounts/BA61ypiv3pJICo3jQJxGTTUO")

% endif
