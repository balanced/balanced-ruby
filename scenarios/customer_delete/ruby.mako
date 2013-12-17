% if mode == 'definition':
Balanced::Customer.unstore

% else:
customer = Balanced::Customer.find('/customers/CU2E2UpSO9vNFNNdmbK4hhzM')
customer.unstore

% endif
