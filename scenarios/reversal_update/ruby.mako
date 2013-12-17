% if mode == 'definition':
Balanced::Reversal.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

reversal = Balanced::Reversal.find('/reversals/RV3iokTf3sL6UwIp3ZWmQFsK')
reversal.description = 'update this description'
reversal.meta = {
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3',
    'refund.reason' => 'user not happy with product'
}
reversal.save

% endif
