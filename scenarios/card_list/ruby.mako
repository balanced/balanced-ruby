% if mode == 'definition':
Balanced::Card.all
% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

cards = Balanced::Card.all
% endif
