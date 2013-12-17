% if mode == 'definition':
Balanced::Credit.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

credits = Balanced::Credit.all
% endif
