% if mode == 'definition':
Balanced::Reversal.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

reversals = Balanced::Reversal.all
% endif
