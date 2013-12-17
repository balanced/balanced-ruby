% if mode == 'definition':
Balanced::Event.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

event = Balanced::Event.find('/events/EV3cf60616675f11e3b687026ba7cd33d0')

% endif
