% if mode == 'definition':
Balanced::Debit.save()

% else:
require 'balanced'
Balanced.configure('ak-test-1p1Tsac7gHeMQowL2seB7ieliuAJAufyq')

debit = Balanced::Debit.find('/v1/marketplaces/TEST-MP5FKPQwyjvVgTDt7EiRw3Kq/debits/WD7FdeaD0Zh9x6hZMpd5fstW')
debit.description = 'New description for debit'
debit.meta = {
    'anykey' => 'valuegoeshere',
    'facebook.id' => '1234567890'
}
debit.save

% endif
