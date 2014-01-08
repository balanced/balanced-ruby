% if mode == 'definition':
Balanced::Debit.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

debits = Balanced::Debit.all
% endif
