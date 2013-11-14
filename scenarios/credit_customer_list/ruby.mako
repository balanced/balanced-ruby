% if mode == 'definition':
Balanced::Customer.credits

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')


customer = Balanced::Customer.find('/v1/customers/CU5f64LhFMO8cf7N1sQSRVOo')
credits = customer.credits

% endif
