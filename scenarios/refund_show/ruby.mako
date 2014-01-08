% if mode == 'definition':
Balanced::Refund.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

refund = Balanced::Refund.find('/refunds/RF5JfRDWzjzXBneKMoGIvTOC')

% endif
