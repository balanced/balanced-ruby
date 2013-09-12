% if mode == 'definition':
Balanced::Debit.save()

% else:
require 'balanced'
Balanced.configure('b5de51921b2d11e389c4026ba7cac9da')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP5xnSCw6SffAgT7r9dYSGeP/debits/WD6SNqybglelPXcBZVcH40gG')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% endif
