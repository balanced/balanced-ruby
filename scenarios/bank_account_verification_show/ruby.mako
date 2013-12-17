% if mode == 'definition':
Balanced::Verification.find

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

verification = Balanced::Verification.find('/bank_accounts/BA1IXtpQv1dUC587cpMTCRZe')

% endif
