% if mode == 'definition':
Balanced::Debit.find

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

debit = Balanced::Debit.find('/debits/WD500frFtCKu4tazwIDPXHjs')

% endif
