% if mode == 'definition':
Balanced::Account.add_bank_account

% else:
require 'balanced'
Balanced.configure('8c3aeeb80e9e11e38901026ba7f8ec28')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4h8BxozeLxe7VAllP6b5gj/accounts/AC4SoZJ23TvXIUcUOBSTXYHQ')
account.add_bank_account("/v1/bank_accounts/BA5hNwwQFEWByAcdf1U5D5ok")

% endif
