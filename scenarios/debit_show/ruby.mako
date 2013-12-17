% if mode == 'definition':
Balanced::Debit.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

debit = Balanced::Debit.find('/debits/WD2K2v2DkR1NU3KD4z9WKrvs')

% endif
