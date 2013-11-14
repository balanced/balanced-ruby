% if mode == 'definition':
Balanced::Hold.void()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

hold = Balanced::Hold.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/holds/HL7kzlIJiVvhAmp8xFTMmMPB')
hold.void
% endif
