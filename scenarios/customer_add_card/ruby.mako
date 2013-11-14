% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

customer = Balanced::Customer.find('/v1/customers/CU7gMTGKh2yGHYn1lUxH9STS')
response = customer.add_card('/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/cards/CC7iFRCb5AvLuZ9qzIF0VMmA')

% endif
