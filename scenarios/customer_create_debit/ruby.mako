% if mode == 'definition':
Balanced::Customer.debit

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

customer = Balanced::Customer.find('/v1/customers/CU6vs1tjxBtifgTuzKjCGtVS')
customer.debit(:amount => 5000)

% endif
