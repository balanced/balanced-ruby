% if mode == 'definition':
Balanced::Callback.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

callback = Balanced::Callback.find('/callbacks/CB1YqOYiy0ajzlvVqGEWr5mw')
% endif
