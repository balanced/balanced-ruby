% if mode == 'definition':
Balanced::Refund.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

refunds = Balanced::Refund.all
% endif
