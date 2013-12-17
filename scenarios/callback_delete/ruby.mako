% if mode == 'definition':
Balanced::Callback.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

callback = Balanced::Callback.find('/callbacks/CB1YqOYiy0ajzlvVqGEWr5mw')
callback.unstore
% endif
