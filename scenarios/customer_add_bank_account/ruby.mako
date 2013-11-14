% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

customer = Balanced::Customer.find('/v1/customers/CU6n0viWQoT86ttbkCsPgV0Y')
customer.add_bank_account("/v1/bank_accounts/BA6oxYWJXxeM63vMorgtSIhI")

% endif
