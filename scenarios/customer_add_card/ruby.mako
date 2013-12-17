% if mode == 'definition':
Balanced::Customer.add_card

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

customer = Balanced::Customer.find('/customers/CU2E2UpSO9vNFNNdmbK4hhzM')
customer.add_card('')

% endif
