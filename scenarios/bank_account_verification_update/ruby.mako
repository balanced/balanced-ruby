% if mode == 'definition':
Balanced::Verification.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

verification = Balanced::Verification.find('/verifications/BZ1MLiNJClTk3gzKktkzyLbF')

verification.amount_2 = 1

verification.amount_1 = 1

verification.save

% endif
