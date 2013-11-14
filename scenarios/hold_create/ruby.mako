% if mode == 'definition':
Balanced::Customer.hold(...)

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

hold = Balanced::Hold.new(
  :amount => 5000,
  :description => 'Some descriptive text for the debit in the dashboard',
  :source_uri => '/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/cards/CC7iFRCb5AvLuZ9qzIF0VMmA'
)
hold.save
% endif
