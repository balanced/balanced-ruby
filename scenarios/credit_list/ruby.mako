% if mode == 'definition':
Balanced::Credit.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

credits = Balanced::Credit.all
% endif
