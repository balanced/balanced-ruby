% if mode == 'definition':
Balanced::Hold.find()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/holds/HL74dRg2HWc5vQwX0kQ9XQfM')

% endif
