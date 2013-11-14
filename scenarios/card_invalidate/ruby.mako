% if mode == 'definition':
Balanced::Card.invalidate()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

card = Balanced::Card.find('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/cards/CC5N3HHUDrAyvhNwQOoUd3UX')
card.invalidate
% endif
