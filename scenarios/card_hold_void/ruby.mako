% if mode == 'definition':
Balanced::CardHold.void

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

card_hold = Balanced::CardHold.find('/card_holds/HL24SjfboUx6Fp5L7sRbqcaj')
card_hold.void
% endif
