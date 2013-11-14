% if mode == 'definition':
Balanced::Account.add_card

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

account = Balanced::Account.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/accounts/CU4WT2fC14gzGQIEcMKs5gm3')
response = account.add_card('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/cards/CC4Zor9L2DEKXy0LJJ8PtkMM')

% endif
