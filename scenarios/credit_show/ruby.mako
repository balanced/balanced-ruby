% if mode == 'definition':
Balanced::Credit.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

credit = Balanced::Credit.find('/credits/CR56eBUnwbYLwR2KltuqmOLe')
% endif
