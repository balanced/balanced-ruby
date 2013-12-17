% if mode == 'definition':
Balanced::CardHold.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

holds = Balanced::CardHold.all
% endif
