% if mode == 'definition':
Balanced::Customer.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

customer = Balanced::Customer.find('/customers/CU2yZUucVA75MtOPVDKYuEhq')
% endif
