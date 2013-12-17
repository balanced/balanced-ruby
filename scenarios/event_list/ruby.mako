% if mode == 'definition':
Balanced::Event.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

events = Balanced::Event.all
% endif
