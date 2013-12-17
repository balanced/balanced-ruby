% if mode == 'definition':
Balanced::Refund.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

refund = Balanced::Refund.find('/refunds/RF3aLUMyaZgAUl5gfU4Jk94z')

% endif
