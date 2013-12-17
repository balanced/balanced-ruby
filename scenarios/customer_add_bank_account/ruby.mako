% if mode == 'definition':
Balanced::Customer.add_bank_account

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

customer = Balanced::Customer.find('/customers/CU2E2UpSO9vNFNNdmbK4hhzM')
customer.add_bank_account("/bank_accounts/BA1SeZEMzTHJG3kiQRkcMOkW")

% endif
