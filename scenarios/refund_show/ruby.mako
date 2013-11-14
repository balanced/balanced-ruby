% if mode == 'definition':
Balanced::Refund.find()

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

refund = Balanced::Refund.find('/v1/customers/CU7gMTGKh2yGHYn1lUxH9STS/refunds/RF7qwuLxprQJuVGf7sTAdwKc')

% endif
