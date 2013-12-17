% if mode == 'definition':
Balanced::Debit.all

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

debits = Balanced::Debit.all
% endif
