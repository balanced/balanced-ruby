% if mode == 'definition':
Balanced::Account.add_bank_account

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/accounts/CU4WT2fC14gzGQIEcMKs5gm3')
account.add_bank_account("/v1/bank_accounts/BA53NVwHAXYx7fo98SdK41dg")

% endif
