% if mode == 'definition':
Balanced::Customer.holds

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

customer = Balanced::Customer.find('/v1/customers/CU6ZO6HM8Hf8NMQRMm3ZlCAe')
holds = customer.holds

% endif
