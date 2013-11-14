% if mode == 'definition':
Balanced::Customer.refunds

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

customer = Balanced::Customer.find('/v1/customers/CU7gMTGKh2yGHYn1lUxH9STS')
refunds = customer.refunds

% endif
