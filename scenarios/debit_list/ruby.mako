% if mode == 'definition':
Balanced::Debit.all

% else:
require 'balanced'
Balanced.configure('ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD')

marketplace = Balanced::Marketplace.my_marketplace

debits = Balanced::Debit.all(:limit => 2)
% endif
