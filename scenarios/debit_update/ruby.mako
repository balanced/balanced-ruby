% if mode == 'definition':
Balanced::Debit.save

% else:
require 'balanced'
Balanced.configure('ak-test-2IfBSMHWXU55xtQ13j9lvtK8IRjsb804g')

debit = Balanced::Debit.find('/debits/WD2K2v2DkR1NU3KD4z9WKrvs')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% endif
