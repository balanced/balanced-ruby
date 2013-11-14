% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

credit = Balanced::Credit.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/credits/CR5YK26rTyl5vlFK928nhxUI')
% endif
