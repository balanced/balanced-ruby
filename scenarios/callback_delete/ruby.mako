% if mode == 'definition':
Balanced::Callback.unstore

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

callback = Balanced::Callback.find('/callbacks/CB4AK8tRza4G6pcp2dHLQvEj')
callback.unstore
% endif
