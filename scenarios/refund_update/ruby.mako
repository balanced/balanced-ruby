% if mode == 'definition':
Balanced::Refund.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

refund = Balanced::Refund.find('/refunds/RF3aLUMyaZgAUl5gfU4Jk94z')
refund.description = 'update this description'
refund.meta = {
    'user.notes' => 'very polite on the phone',
    'user.refund.count' => '3',
    'refund.reason' => 'user not happy with product'
}
refund.save

% endif
