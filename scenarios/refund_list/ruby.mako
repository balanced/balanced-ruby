% if mode == 'definition':
Balanced::Refund.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

refunds = Balanced::Refund.all
% endif
