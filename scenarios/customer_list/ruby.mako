% if mode == 'definition':
Balanced::Customer.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

customers = Balanced::Customer.all
% endif
