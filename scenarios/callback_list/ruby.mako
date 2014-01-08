% if mode == 'definition':
Balanced::Callback.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

callbacks = Balanced::Callback.all
% endif
