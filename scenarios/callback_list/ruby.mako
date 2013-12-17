% if mode == 'definition':
Balanced::Callback.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

callbacks = Balanced::Callback.all
% endif
